
CREATE TABLE actor.toolbar (
    id          BIGSERIAL   PRIMARY KEY,
    ws          INT         REFERENCES actor.workstation (id) ON DELETE CASCADE,
    org         INT         REFERENCES actor.org_unit (id) ON DELETE CASCADE,
    usr         INT         REFERENCES actor.usr (id) ON DELETE CASCADE,
    label       TEXT        NOT NULL,
    layout      TEXT        NOT NULL,
    CONSTRAINT only_one_type CHECK (
        (ws IS NOT NULL AND COALESCE(org,usr) IS NULL) OR
        (org IS NOT NULL AND COALESCE(ws,usr) IS NULL) OR
        (usr IS NOT NULL AND COALESCE(org,ws) IS NULL)
    ),
    CONSTRAINT layout_must_be_json CHECK ( is_json(layout) )
);
CREATE UNIQUE INDEX label_once_per_ws ON actor.toolbar (ws, label) WHERE ws IS NOT NULL;
CREATE UNIQUE INDEX label_once_per_org ON actor.toolbar (org, label) WHERE org IS NOT NULL;
CREATE UNIQUE INDEX label_once_per_usr ON actor.toolbar (usr, label) WHERE usr IS NOT NULL;

-- this one unrelated to toolbars but is a gap in the upgrade scripts
INSERT INTO permission.perm_list ( id, code, description )
    SELECT
        522,
        'IMPORT_AUTHORITY_MARC',
        oils_i18n_gettext(
            522,
            'Allows a user to create new authority records',
            'ppl',
            'description'
        )
    WHERE NOT EXISTS (
        SELECT 1
        FROM permission.perm_list
        WHERE
            id = 522
    );

INSERT INTO permission.perm_list ( id, code, description ) VALUES (
    523,
    'ADMIN_TOOLBAR',
    oils_i18n_gettext(
        523,
        'Allows a user to create, edit, and delete custom toolbars',
        'ppl',
        'description'
    )
);

-- Don't want to assume stock perm groups in an upgrade script, but here for ease of testing
-- INSERT INTO permission.grp_perm_map (grp, perm, depth, grantable) SELECT pgt.id, perm.id, aout.depth, FALSE FROM permission.grp_tree pgt, permission.perm_list perm, actor.org_unit_type aout WHERE pgt.name = 'Staff' AND aout.name = 'Branch' AND perm.code = 'ADMIN_TOOLBAR';

INSERT INTO actor.toolbar(org,label,layout) VALUES
    ( 1, 'circ', '["circ_checkout","circ_checkin","toolbarseparator","search_opac","copy_status","toolbarseparator","patron_search","patron_register","toolbarspacer","hotkeys_toggle"]' ),
    ( 1, 'cat', '["circ_checkin","toolbarseparator","search_opac","copy_status","toolbarseparator","create_marc","authority_manage","retrieve_last_record","toolbarspacer","hotkeys_toggle"]' );

-- delete from permission.grp_perm_map where perm in (select id from permission.perm_list where code ~ 'TOOLBAR'); delete from permission.perm_list where code ~ 'TOOLBAR'; drop table actor.toolbar ;
