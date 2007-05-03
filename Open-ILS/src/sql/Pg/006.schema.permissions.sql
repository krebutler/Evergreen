DROP SCHEMA permission CASCADE;

BEGIN;
CREATE SCHEMA permission;

CREATE TABLE permission.perm_list (
	id		SERIAL	PRIMARY KEY,
	code		TEXT	NOT NULL UNIQUE,
	description	TEXT
);
CREATE INDEX perm_list_code_idx ON permission.perm_list (code);

INSERT INTO permission.perm_list VALUES (-1, 'EVERYTHING', NULL);
INSERT INTO permission.perm_list VALUES (2, 'OPAC_LOGIN', NULL);
INSERT INTO permission.perm_list VALUES (4, 'STAFF_LOGIN', NULL);
INSERT INTO permission.perm_list VALUES (5, 'MR_HOLDS', NULL);
INSERT INTO permission.perm_list VALUES (6, 'TITLE_HOLDS', NULL);
INSERT INTO permission.perm_list VALUES (7, 'VOLUME_HOLDS', NULL);
INSERT INTO permission.perm_list VALUES (8, 'COPY_HOLDS', 'User is allowed to place a hold on a specific copy');
INSERT INTO permission.perm_list VALUES (9, 'REQUEST_HOLDS', NULL);
INSERT INTO permission.perm_list VALUES (10, 'REQUEST_HOLDS_OVERRIDE', NULL);
INSERT INTO permission.perm_list VALUES (11, 'VIEW_HOLD', 'Allows a user to view another user''s holds');
INSERT INTO permission.perm_list VALUES (13, 'DELETE_HOLDS', NULL);
INSERT INTO permission.perm_list VALUES (14, 'UPDATE_HOLD', 'Allows a user to update another user''s hold');
INSERT INTO permission.perm_list VALUES (15, 'RENEW_CIRC', NULL);
INSERT INTO permission.perm_list VALUES (16, 'VIEW_USER_FINES_SUMMARY', NULL);
INSERT INTO permission.perm_list VALUES (17, 'VIEW_USER_TRANSACTIONS', NULL);
INSERT INTO permission.perm_list VALUES (18, 'UPDATE_MARC', NULL);
INSERT INTO permission.perm_list VALUES (19, 'CREATE_MARC', 'User is allowed to create new MARC records');
INSERT INTO permission.perm_list VALUES (20, 'IMPORT_MARC', NULL);
INSERT INTO permission.perm_list VALUES (21, 'CREATE_VOLUME', NULL);
INSERT INTO permission.perm_list VALUES (22, 'UPDATE_VOLUME', NULL);
INSERT INTO permission.perm_list VALUES (23, 'DELETE_VOLUME', NULL);
INSERT INTO permission.perm_list VALUES (25, 'UPDATE_COPY', NULL);
INSERT INTO permission.perm_list VALUES (26, 'DELETE_COPY', NULL);
INSERT INTO permission.perm_list VALUES (27, 'RENEW_HOLD_OVERRIDE', NULL);
INSERT INTO permission.perm_list VALUES (28, 'CREATE_USER', NULL);
INSERT INTO permission.perm_list VALUES (29, 'UPDATE_USER', NULL);
INSERT INTO permission.perm_list VALUES (30, 'DELETE_USER', NULL);
INSERT INTO permission.perm_list VALUES (31, 'VIEW_USER', NULL);
INSERT INTO permission.perm_list VALUES (32, 'COPY_CHECKIN', NULL);
INSERT INTO permission.perm_list VALUES (33, 'CREATE_TRANSIT', NULL);
INSERT INTO permission.perm_list VALUES (34, 'VIEW_PERMISSION', NULL);
INSERT INTO permission.perm_list VALUES (35, 'CHECKIN_BYPASS_HOLD_FULFILL', NULL);
INSERT INTO permission.perm_list VALUES (36, 'CREATE_PAYMENT', NULL);
INSERT INTO permission.perm_list VALUES (37, 'SET_CIRC_LOST', NULL);
INSERT INTO permission.perm_list VALUES (38, 'SET_CIRC_MISSING', NULL);
INSERT INTO permission.perm_list VALUES (39, 'SET_CIRC_CLAIMS_RETURNED', NULL);
INSERT INTO permission.perm_list VALUES (41, 'CREATE_TRANSACTION', 'User may create new billable transactions');
INSERT INTO permission.perm_list VALUES (43, 'CREATE_BILL', 'Allows a user to create a new bill on a transaction');
INSERT INTO permission.perm_list VALUES (44, 'VIEW_CONTAINER', 'Allows a user to view another user''s containers (buckets)');
INSERT INTO permission.perm_list VALUES (45, 'CREATE_CONTAINER', 'Allows a user to create a new container for another user');
INSERT INTO permission.perm_list VALUES (24, 'CREATE_COPY', 'User is allowed to create a new copy object');
INSERT INTO permission.perm_list VALUES (47, 'UPDATE_ORG_UNIT', 'Allows a user to change org unit settings');
INSERT INTO permission.perm_list VALUES (48, 'VIEW_CIRCULATIONS', 'Allows a user to see what another use has checked out');
INSERT INTO permission.perm_list VALUES (42, 'VIEW_TRANSACTION', 'User may view another user''s transactions');
INSERT INTO permission.perm_list VALUES (49, 'DELETE_CONTAINER', 'Allows a user to delete another user container');
INSERT INTO permission.perm_list VALUES (50, 'CREATE_CONTAINER_ITEM', 'Create a container item for another user');
INSERT INTO permission.perm_list VALUES (51, 'CREATE_USER_GROUP_LINK', 'User can add other users to permission groups');
INSERT INTO permission.perm_list VALUES (52, 'REMOVE_USER_GROUP_LINK', 'User can remove other users from permission groups');
INSERT INTO permission.perm_list VALUES (53, 'VIEW_PERM_GROUPS', 'Allow user to view others'' permission groups');
INSERT INTO permission.perm_list VALUES (54, 'VIEW_PERMIT_CHECKOUT', 'Allows a user to determine of another user can checkout an item');
INSERT INTO permission.perm_list VALUES (55, 'UPDATE_BATCH_COPY', 'Allows a user to edit copies in batch');
INSERT INTO permission.perm_list VALUES (56, 'CREATE_PATRON_STAT_CAT', 'User may create a new patron statistical category');
INSERT INTO permission.perm_list VALUES (57, 'CREATE_COPY_STAT_CAT', 'User may create a copy stat cat');
INSERT INTO permission.perm_list VALUES (58, 'CREATE_PATRON_STAT_CAT_ENTRY', 'User may create a new patron stat cat entry');
INSERT INTO permission.perm_list VALUES (59, 'CREATE_COPY_STAT_CAT_ENTRY', 'User may create a new copy stat cat entry');
INSERT INTO permission.perm_list VALUES (60, 'UPDATE_PATRON_STAT_CAT', 'User may update a patron stat cat');
INSERT INTO permission.perm_list VALUES (61, 'UPDATE_COPY_STAT_CAT', 'User may update a copy stat cat');
INSERT INTO permission.perm_list VALUES (62, 'UPDATE_PATRON_STAT_CAT_ENTRY', 'User may update a patron stat cat entry');
INSERT INTO permission.perm_list VALUES (63, 'UPDATE_COPY_STAT_CAT_ENTRY', 'User may update a copy stat cat entry');
INSERT INTO permission.perm_list VALUES (65, 'CREATE_COPY_STAT_CAT_ENTRY_MAP', 'User may link a copy to a stat cat entry');
INSERT INTO permission.perm_list VALUES (64, 'CREATE_PATRON_STAT_CAT_ENTRY_MAP', 'User may link another user to a stat cat entry');
INSERT INTO permission.perm_list VALUES (66, 'DELETE_PATRON_STAT_CAT', 'User may delete a patron stat cat');
INSERT INTO permission.perm_list VALUES (67, 'DELETE_COPY_STAT_CAT', 'User may delete a copy stat cat');
INSERT INTO permission.perm_list VALUES (68, 'DELETE_PATRON_STAT_CAT_ENTRY', 'User may delete a patron stat cat entry');
INSERT INTO permission.perm_list VALUES (69, 'DELETE_COPY_STAT_CAT_ENTRY', 'User may delete a copy stat cat entry');
INSERT INTO permission.perm_list VALUES (70, 'DELETE_PATRON_STAT_CAT_ENTRY_MAP', 'User may delete a patron stat cat entry map');
INSERT INTO permission.perm_list VALUES (71, 'DELETE_COPY_STAT_CAT_ENTRY_MAP', 'User may delete a copy stat cat entry map');
INSERT INTO permission.perm_list VALUES (72, 'CREATE_NON_CAT_TYPE', 'Allows a user to create a new non-cataloged item type');
INSERT INTO permission.perm_list VALUES (73, 'UPDATE_NON_CAT_TYPE', 'Allows a user to update a non cataloged type');
INSERT INTO permission.perm_list VALUES (74, 'CREATE_IN_HOUSE_USE', 'Allows a user to create a new in-house-use ');
INSERT INTO permission.perm_list VALUES (75, 'COPY_CHECKOUT', 'Allows a user to check out a copy');
INSERT INTO permission.perm_list VALUES (76, 'CREATE_COPY_LOCATION', 'Allows a user to create a new copy location');
INSERT INTO permission.perm_list VALUES (77, 'UPDATE_COPY_LOCATION', 'Allows a user to update a copy location');
INSERT INTO permission.perm_list VALUES (78, 'DELETE_COPY_LOCATION', 'Allows a user to delete a copy location');
INSERT INTO permission.perm_list VALUES (79, 'CREATE_COPY_TRANSIT', 'Allows a user to create a transit_copy object for transiting a copy');
INSERT INTO permission.perm_list VALUES (80, 'COPY_TRANSIT_RECEIVE', 'Allows a user to close out a transit on a copy');
INSERT INTO permission.perm_list VALUES (81, 'VIEW_HOLD_PERMIT', 'Allows a user to see if another user has permission to place a hold on a given copy');
INSERT INTO permission.perm_list VALUES (82, 'VIEW_COPY_CHECKOUT_HISTORY', 'Allows a user to view which users have checked out a given copy');
INSERT INTO permission.perm_list VALUES (83, 'REMOTE_Z3950_QUERY', 'Allows a user to perform z3950 queries against remote servers');
INSERT INTO permission.perm_list VALUES (84, 'REGISTER_WORKSTATION', 'Allows a user to register a new workstation');
INSERT INTO permission.perm_list VALUES (85, 'VIEW_COPY_NOTES', 'Allows a user to view all notes attached to a copy');
INSERT INTO permission.perm_list VALUES (86, 'VIEW_VOLUME_NOTES', 'Allows a user to view all notes attached to a volume');
INSERT INTO permission.perm_list VALUES (87, 'VIEW_TITLE_NOTES', 'Allows a user to view all notes attached to a title');
INSERT INTO permission.perm_list VALUES (89, 'CREATE_VOLUME_NOTE', 'Allows a user to create a new volume note');
INSERT INTO permission.perm_list VALUES (88, 'CREATE_COPY_NOTE', 'Allows a user to create a new copy note');
INSERT INTO permission.perm_list VALUES (90, 'CREATE_TITLE_NOTE', 'Allows a user to create a new title note');
INSERT INTO permission.perm_list VALUES (91, 'DELETE_COPY_NOTE', 'Allows a user to delete someone elses copy notes');
INSERT INTO permission.perm_list VALUES (92, 'DELETE_VOLUME_NOTE', 'Allows a user to delete someone elses volume note');
INSERT INTO permission.perm_list VALUES (93, 'DELETE_TITLE_NOTE', 'Allows a user to delete someone elses title note');
INSERT INTO permission.perm_list VALUES (94, 'UPDATE_CONTAINER', 'Allows a user to update another users container');
INSERT INTO permission.perm_list VALUES (95, 'CREATE_MY_CONTAINER', 'Allows a user to create a container for themselves');
INSERT INTO permission.perm_list VALUES (96, 'VIEW_HOLD_NOTIFICATION', 'Allows a user to view notifications attached to a hold');
INSERT INTO permission.perm_list VALUES (97, 'CREATE_HOLD_NOTIFICATION', 'Allows a user to create new hold notifications');
INSERT INTO permission.perm_list VALUES (98, 'UPDATE_ORG_SETTING', 'Allows a user to update an org unit setting');
INSERT INTO permission.perm_list VALUES (99, 'OFFLINE_UPLOAD', 'Allows a user to upload an offline script');
INSERT INTO permission.perm_list VALUES (100, 'OFFLINE_VIEW', 'Allows a user to view uploaded offline script information');
INSERT INTO permission.perm_list VALUES (101, 'OFFLINE_EXECUTE', 'Allows a user to execute an offline script batch');
INSERT INTO permission.perm_list VALUES (102, 'CIRC_OVERRIDE_DUE_DATE', 'Allows a user to change set the due date on an item to any date');
INSERT INTO permission.perm_list VALUES (103, 'CIRC_PERMIT_OVERRIDE', 'Allows a user to bypass the circ permit call for checkout');
INSERT INTO permission.perm_list VALUES (104, 'COPY_IS_REFERENCE.override', 'Allows a user to override the copy_is_reference event');
INSERT INTO permission.perm_list VALUES (105, 'VOID_BILLING', 'Allows a user to void a bill');
INSERT INTO permission.perm_list VALUES (106, 'CIRC_CLAIMS_RETURNED.override', 'Allows a person to check in/out an item that is claims returned');
INSERT INTO permission.perm_list VALUES (107, 'COPY_BAD_STATUS.override', 'Allows a user to check out an item in a non-circulatable status');
INSERT INTO permission.perm_list VALUES (108, 'COPY_ALERT_MESSAGE.override', 'Allows a user to check in/out an item that has an alert message');
INSERT INTO permission.perm_list VALUES (109, 'COPY_STATUS_LOST.override', 'Allows a user to remove the lost status from a copy');
INSERT INTO permission.perm_list VALUES (110, 'COPY_STATUS_MISSING.override', 'Allows a user to change the missing status on a copy');
INSERT INTO permission.perm_list VALUES (111, 'ABORT_TRANSIT', 'Allows a user to abort a copy transit if the user is at the transit destination or source');
INSERT INTO permission.perm_list VALUES (112, 'ABORT_REMOTE_TRANIST', 'Allows a user to abort a copy transit if the user is not at the transit source or dest');
INSERT INTO permission.perm_list VALUES (113, 'VIEW_ZIP_DATA', 'Allowsa user to query the zip code data method');
INSERT INTO permission.perm_list VALUES (114, 'CANCEL_HOLDS', '');
INSERT INTO permission.perm_list VALUES (115, 'CREATE_DUPLICATE_HOLDS', 'Allows a user to create duplicate holds (e.g. two holds on the same title)');
INSERT INTO permission.perm_list VALUES (117, 'actor.org_unit.closed_date.update', 'Allows a user to update a closed date interval for a given location');
INSERT INTO permission.perm_list VALUES (116, 'actor.org_unit.closed_date.delete', 'Allows a user to remove a closed date interval for a given location');
INSERT INTO permission.perm_list VALUES (118, 'actor.org_unit.closed_date.create', 'Allows a user to create a new closed date for a location');
INSERT INTO permission.perm_list VALUES (119, 'DELETE_NON_CAT_TYPE', 'Allows a user to delete a non cataloged type');
INSERT INTO permission.perm_list VALUES (120, 'money.collections_tracker.create', 'Allows a user to put someone into collections');
INSERT INTO permission.perm_list VALUES (121, 'money.collections_tracker.delete', 'Allows a user to remove someone from collections');
INSERT INTO permission.perm_list VALUES (122, 'BAR_PATRON', 'Allows a user to bar a patron');
INSERT INTO permission.perm_list VALUES (123, 'UNBAR_PATRON', 'Allows a user to un-bar a patron');
INSERT INTO permission.perm_list VALUES (124, 'DELETE_WORKSTATION', 'Allows a user to remove an existing workstation so a new one can replace it');
INSERT INTO permission.perm_list VALUES (125, 'group_application.user', 'Allows a user to add/remove users to/from the "User" group');
INSERT INTO permission.perm_list VALUES (126, 'group_application.user.patron', 'Allows a user to add/remove users to/from the "Patron" group');
INSERT INTO permission.perm_list VALUES (127, 'group_application.user.staff', 'Allows a user to add/remove users to/from the "Staff" group');
INSERT INTO permission.perm_list VALUES (128, 'group_application.user.staff.circ', 'Allows a user to add/remove users to/from the "Circulator" group');
INSERT INTO permission.perm_list VALUES (129, 'group_application.user.staff.cat', 'Allows a user to add/remove users to/from the "Cataloger" group');
INSERT INTO permission.perm_list VALUES (130, 'group_application.user.staff.admin.global_admin', 'Allows a user to add/remove users to/from the "GlobalAdmin" group');
INSERT INTO permission.perm_list VALUES (131, 'group_application.user.staff.admin.local_admin', 'Allows a user to add/remove users to/from the "LocalAdmin" group');
INSERT INTO permission.perm_list VALUES (132, 'group_application.user.staff.admin.lib_manager', 'Allows a user to add/remove users to/from the "LibraryManager" group');
INSERT INTO permission.perm_list VALUES (133, 'group_application.user.staff.cat.cat1', 'Allows a user to add/remove users to/from the "Cat1" group');
INSERT INTO permission.perm_list VALUES (134, 'group_application.user.staff.supercat', 'Allows a user to add/remove users to/from the "Supercat" group');
INSERT INTO permission.perm_list VALUES (135, 'group_application.user.sip_client', 'Allows a user to add/remove users to/from the "SIP-Client" group');
INSERT INTO permission.perm_list VALUES (136, 'group_application.user.vendor', 'Allows a user to add/remove users to/from the "Vendor" group');
INSERT INTO permission.perm_list VALUES (137, 'ITEM_AGE_PROTECTED.override', 'Allows a user to place a hold on an age-protected item');
INSERT INTO permission.perm_list VALUES (138, 'MAX_RENEWALS_REACHED.override', 'Allows a user to renew an item past the maximun renewal count');
INSERT INTO permission.perm_list VALUES (139, 'PATRON_EXCEEDS_CHECKOUT_COUNT.override', 'Allow staff to override checkout count failure');
INSERT INTO permission.perm_list VALUES (140, 'PATRON_EXCEEDS_OVERDUE_COUNT.override', 'Allow staff to override overdue count failure');
INSERT INTO permission.perm_list VALUES (141, 'PATRON_EXCEEDS_FINES.override', 'Allow staff to override fine amount checkout failure');
INSERT INTO permission.perm_list VALUES (142, 'CIRC_EXCEEDS_COPY_RANGE.override', '');
INSERT INTO permission.perm_list VALUES (143, 'ITEM_ON_HOLDS_SHELF.override', '');
INSERT INTO permission.perm_list VALUES (144, 'COPY_NOT_AVAILABLE.override', 'Allow staff to force checkout of Missing/Lost type items');
INSERT INTO permission.perm_list VALUES (145, 'VOLUME_UPDATE', '');
INSERT INTO permission.perm_list VALUES (146, 'HOLD_EXISTS.override', 'allows users to place multiple holds on a single title');
INSERT INTO permission.perm_list VALUES (147, 'RUN_REPORTS', 'Allows a users to run reports');
INSERT INTO permission.perm_list VALUES (148, 'SHARE_REPORT_FOLDER', 'Allows a user to share report his own folders');
INSERT INTO permission.perm_list VALUES (149, 'VIEW_REPORT_OUTPUT', 'Allow user to view report output');
INSERT INTO permission.perm_list VALUES (150, 'COPY_CIRC_NOT_ALLOWED.override', 'Allows a user to checkout an item that is marked as non-circ');
INSERT INTO permission.perm_list VALUES (151, 'DELETE_CONTAINER_ITEM', 'Allows a user to delete an item out of another user''s container');

SELECT SETVAL('permission.perm_list_id_seq'::TEXT, 151, TRUE);

CREATE TABLE permission.grp_tree (
	id			SERIAL	PRIMARY KEY,
	name			TEXT	NOT NULL UNIQUE,
	parent			INT	REFERENCES permission.grp_tree (id) ON DELETE RESTRICT,
	usergroup		BOOL	NOT NULL DEFAULT TRUE,
	perm_interval		INTERVAL DEFAULT '3 years'::interval NOT NULL,
	description		TEXT,
	application_perm	TEXT
);
CREATE INDEX grp_tree_parent_idx ON permission.grp_tree (parent);

INSERT INTO permission.grp_tree (id, name, parent, description, perm_interval, usergroup, application_perm)
	VALUES (1, 'Users', NULL, NULL, '3 years', FALSE, 'group_application.user');
INSERT INTO permission.grp_tree (id, name, parent, description, perm_interval, usergroup, application_perm)
	VALUES (2, 'Patrons', 1, NULL, '3 years', TRUE, 'group_application.user.patron');
INSERT INTO permission.grp_tree (id, name, parent, description, perm_interval, usergroup, application_perm)
	VALUES (3, 'Staff', 1, NULL, '3 years', FALSE, 'group_application.user.staff');
INSERT INTO permission.grp_tree (id, name, parent, description, perm_interval, usergroup, application_perm)
	VALUES (4, 'Catalogers', 3, NULL, '3 years', TRUE, 'group_application.user.staff.cat');
INSERT INTO permission.grp_tree (id, name, parent, description, perm_interval, usergroup, application_perm)
	VALUES (5, 'Circulators', 3, NULL, '3 years', TRUE, 'group_application.user.staff.circ');
INSERT INTO permission.grp_tree (id, name, parent, description, perm_interval, usergroup, application_perm)
	VALUES (10, 'Local System Administrator', 3, 'System maintenance, configuration, etc.', '3 years', TRUE, 'group_application.user.staff.admin.local_admin');

SELECT SETVAL('permission.grp_tree_id_seq'::TEXT, 11);

CREATE TABLE permission.grp_perm_map (
	id		SERIAL	PRIMARY KEY,
	grp		INT	NOT NULL REFERENCES permission.grp_tree (id) ON DELETE CASCADE,
	perm		INT	NOT NULL REFERENCES permission.perm_list (id) ON DELETE CASCADE,
	depth		INT	NOT NULL,
	grantable	BOOL	NOT NULL DEFAULT FALSE,
		CONSTRAINT perm_grp_once UNIQUE (grp,perm)
);

-- XXX Incomplete base permission setup.  A patch would be appreciated.
INSERT INTO permission.grp_perm_map VALUES (57, 2, 15, 0, false);
INSERT INTO permission.grp_perm_map VALUES (109, 2, 95, 0, false);
INSERT INTO permission.grp_perm_map VALUES (1, 1, 2, 0, false);
INSERT INTO permission.grp_perm_map VALUES (12, 1, 5, 0, false);
INSERT INTO permission.grp_perm_map VALUES (13, 1, 6, 0, false);
INSERT INTO permission.grp_perm_map VALUES (51, 1, 32, 0, false);
INSERT INTO permission.grp_perm_map VALUES (111, 1, 95, 0, false);
INSERT INTO permission.grp_perm_map VALUES (11, 3, 4, 0, false);
INSERT INTO permission.grp_perm_map VALUES (14, 3, 7, 2, false);
INSERT INTO permission.grp_perm_map VALUES (16, 3, 9, 0, false);
INSERT INTO permission.grp_perm_map VALUES (19, 3, 15, 0, false);
INSERT INTO permission.grp_perm_map VALUES (20, 3, 16, 0, false);
INSERT INTO permission.grp_perm_map VALUES (21, 3, 17, 0, false);
INSERT INTO permission.grp_perm_map VALUES (116, 3, 18, 0, false);
INSERT INTO permission.grp_perm_map VALUES (117, 3, 20, 0, false);
INSERT INTO permission.grp_perm_map VALUES (118, 3, 21, 2, false);
INSERT INTO permission.grp_perm_map VALUES (119, 3, 22, 2, false);
INSERT INTO permission.grp_perm_map VALUES (120, 3, 23, 2, false);
INSERT INTO permission.grp_perm_map VALUES (121, 3, 25, 2, false);
INSERT INTO permission.grp_perm_map VALUES (26, 3, 27, 0, false);
INSERT INTO permission.grp_perm_map VALUES (27, 3, 28, 0, false);
INSERT INTO permission.grp_perm_map VALUES (28, 3, 29, 0, false);
INSERT INTO permission.grp_perm_map VALUES (29, 3, 30, 0, false);
INSERT INTO permission.grp_perm_map VALUES (44, 3, 31, 0, false);
INSERT INTO permission.grp_perm_map VALUES (31, 3, 33, 0, false);
INSERT INTO permission.grp_perm_map VALUES (32, 3, 34, 0, false);
INSERT INTO permission.grp_perm_map VALUES (33, 3, 35, 0, false);
INSERT INTO permission.grp_perm_map VALUES (41, 3, 36, 0, false);
INSERT INTO permission.grp_perm_map VALUES (45, 3, 37, 0, false);
INSERT INTO permission.grp_perm_map VALUES (46, 3, 38, 0, false);
INSERT INTO permission.grp_perm_map VALUES (47, 3, 39, 0, false);
INSERT INTO permission.grp_perm_map VALUES (122, 3, 41, 0, false);
INSERT INTO permission.grp_perm_map VALUES (123, 3, 43, 0, false);
INSERT INTO permission.grp_perm_map VALUES (60, 3, 44, 0, false);
INSERT INTO permission.grp_perm_map VALUES (110, 3, 45, 0, false);
INSERT INTO permission.grp_perm_map VALUES (124, 3, 8, 2, false);
INSERT INTO permission.grp_perm_map VALUES (125, 3, 24, 2, false);
INSERT INTO permission.grp_perm_map VALUES (126, 3, 19, 0, false);
INSERT INTO permission.grp_perm_map VALUES (61, 3, 47, 2, false);
INSERT INTO permission.grp_perm_map VALUES (95, 3, 48, 0, false);
INSERT INTO permission.grp_perm_map VALUES (17, 3, 11, 0, false);
INSERT INTO permission.grp_perm_map VALUES (62, 3, 42, 0, false);
INSERT INTO permission.grp_perm_map VALUES (63, 3, 49, 0, false);
INSERT INTO permission.grp_perm_map VALUES (64, 3, 50, 0, false);
INSERT INTO permission.grp_perm_map VALUES (127, 3, 53, 0, false);
INSERT INTO permission.grp_perm_map VALUES (65, 3, 54, 0, false);
INSERT INTO permission.grp_perm_map VALUES (128, 3, 55, 2, false);
INSERT INTO permission.grp_perm_map VALUES (67, 3, 56, 2, false);
INSERT INTO permission.grp_perm_map VALUES (68, 3, 57, 2, false);
INSERT INTO permission.grp_perm_map VALUES (69, 3, 58, 2, false);
INSERT INTO permission.grp_perm_map VALUES (70, 3, 59, 2, false);
INSERT INTO permission.grp_perm_map VALUES (71, 3, 60, 2, false);
INSERT INTO permission.grp_perm_map VALUES (72, 3, 61, 2, false);
INSERT INTO permission.grp_perm_map VALUES (73, 3, 62, 2, false);
INSERT INTO permission.grp_perm_map VALUES (74, 3, 63, 2, false);
INSERT INTO permission.grp_perm_map VALUES (81, 3, 72, 2, false);
INSERT INTO permission.grp_perm_map VALUES (82, 3, 73, 2, false);
INSERT INTO permission.grp_perm_map VALUES (83, 3, 74, 2, false);
INSERT INTO permission.grp_perm_map VALUES (84, 3, 75, 0, false);
INSERT INTO permission.grp_perm_map VALUES (85, 3, 76, 2, false);
INSERT INTO permission.grp_perm_map VALUES (86, 3, 77, 2, false);
INSERT INTO permission.grp_perm_map VALUES (89, 3, 79, 0, false);
INSERT INTO permission.grp_perm_map VALUES (90, 3, 80, 0, false);
INSERT INTO permission.grp_perm_map VALUES (91, 3, 81, 0, false);
INSERT INTO permission.grp_perm_map VALUES (92, 3, 82, 0, false);
INSERT INTO permission.grp_perm_map VALUES (98, 3, 83, 0, false);
INSERT INTO permission.grp_perm_map VALUES (115, 3, 84, 0, false);
INSERT INTO permission.grp_perm_map VALUES (100, 3, 85, 0, false);
INSERT INTO permission.grp_perm_map VALUES (101, 3, 86, 0, false);
INSERT INTO permission.grp_perm_map VALUES (102, 3, 87, 0, false);
INSERT INTO permission.grp_perm_map VALUES (103, 3, 89, 2, false);
INSERT INTO permission.grp_perm_map VALUES (104, 3, 88, 2, false);
INSERT INTO permission.grp_perm_map VALUES (108, 3, 94, 0, false);
INSERT INTO permission.grp_perm_map VALUES (112, 3, 96, 0, false);
INSERT INTO permission.grp_perm_map VALUES (113, 3, 97, 0, false);
INSERT INTO permission.grp_perm_map VALUES (130, 3, 99, 1, false);
INSERT INTO permission.grp_perm_map VALUES (131, 3, 100, 1, false);
INSERT INTO permission.grp_perm_map VALUES (22, 4, 18, 0, false);
INSERT INTO permission.grp_perm_map VALUES (24, 4, 20, 0, false);
INSERT INTO permission.grp_perm_map VALUES (38, 4, 21, 2, false);
INSERT INTO permission.grp_perm_map VALUES (34, 4, 22, 2, false);
INSERT INTO permission.grp_perm_map VALUES (39, 4, 23, 2, false);
INSERT INTO permission.grp_perm_map VALUES (35, 4, 25, 2, false);
INSERT INTO permission.grp_perm_map VALUES (129, 4, 26, 2, false);
INSERT INTO permission.grp_perm_map VALUES (15, 4, 8, 2, false);
INSERT INTO permission.grp_perm_map VALUES (40, 4, 24, 2, false);
INSERT INTO permission.grp_perm_map VALUES (23, 4, 19, 0, false);
INSERT INTO permission.grp_perm_map VALUES (66, 4, 55, 2, false);
INSERT INTO permission.grp_perm_map VALUES (134, 10, 51, 1, false);
INSERT INTO permission.grp_perm_map VALUES (75, 10, 66, 2, false);
INSERT INTO permission.grp_perm_map VALUES (76, 10, 67, 2, false);
INSERT INTO permission.grp_perm_map VALUES (77, 10, 68, 2, false);
INSERT INTO permission.grp_perm_map VALUES (78, 10, 69, 2, false);
INSERT INTO permission.grp_perm_map VALUES (79, 10, 70, 2, false);
INSERT INTO permission.grp_perm_map VALUES (80, 10, 71, 2, false);
INSERT INTO permission.grp_perm_map VALUES (87, 10, 78, 2, false);
INSERT INTO permission.grp_perm_map VALUES (105, 10, 91, 1, false);
INSERT INTO permission.grp_perm_map VALUES (106, 10, 92, 1, false);
INSERT INTO permission.grp_perm_map VALUES (107, 10, 93, 0, false);
INSERT INTO permission.grp_perm_map VALUES (114, 10, 98, 1, false);
INSERT INTO permission.grp_perm_map VALUES (132, 10, 101, 1, true);
INSERT INTO permission.grp_perm_map VALUES (136, 10, 102, 1, false);
INSERT INTO permission.grp_perm_map VALUES (137, 10, 103, 1, false);
INSERT INTO permission.grp_perm_map VALUES (97, 5, 41, 0, false);
INSERT INTO permission.grp_perm_map VALUES (96, 5, 43, 0, false);
INSERT INTO permission.grp_perm_map VALUES (93, 5, 48, 0, false);
INSERT INTO permission.grp_perm_map VALUES (94, 5, 53, 0, false);
INSERT INTO permission.grp_perm_map VALUES (133, 5, 102, 0, false);
INSERT INTO permission.grp_perm_map VALUES (138, 5, 104, 1, false);

SELECT SETVAL('permission.grp_perm_map_id_seq'::TEXT, 139);

CREATE TABLE permission.usr_perm_map (
	id		SERIAL	PRIMARY KEY,
	usr		INT	NOT NULL REFERENCES actor.usr (id) ON DELETE CASCADE,
	perm		INT	NOT NULL REFERENCES permission.perm_list (id) ON DELETE CASCADE,
	depth		INT	NOT NULL,
	grantable	BOOL	NOT NULL DEFAULT FALSE,
		CONSTRAINT perm_usr_once UNIQUE (usr,perm)
);

CREATE TABLE permission.usr_grp_map (
	id	SERIAL	PRIMARY KEY,
	usr	INT	NOT NULL REFERENCES actor.usr (id) ON DELETE CASCADE,
	grp     INT     NOT NULL REFERENCES permission.grp_tree (id) ON DELETE CASCADE,
		CONSTRAINT usr_grp_once UNIQUE (usr,grp)
);

-- Admin user
INSERT INTO permission.usr_perm_map (usr,perm,depth) VALUES (1,-1,0);

CREATE OR REPLACE FUNCTION permission.grp_ancestors ( INT ) RETURNS SETOF permission.grp_tree AS $$
	SELECT	a.*
	FROM	connectby('permission.grp_tree','parent','id','name',$1,'100','.')
			AS t(keyid text, parent_keyid text, level int, branch text,pos int)
		JOIN permission.grp_tree a ON a.id = t.keyid
	ORDER BY
		CASE WHEN a.parent IS NULL
			THEN 0
			ELSE 1
		END, a.name;
$$ LANGUAGE SQL STABLE;

CREATE OR REPLACE FUNCTION permission.usr_perms ( INT ) RETURNS SETOF permission.usr_perm_map AS $$
	SELECT	DISTINCT ON (usr,perm) *
	  FROM	(
			(SELECT * FROM permission.usr_perm_map WHERE usr = $1)
        				UNION ALL
			(SELECT	-p.id, $1 AS usr, p.perm, p.depth, p.grantable
			  FROM	permission.grp_perm_map p
			  WHERE	p.grp IN (
			  	SELECT	(permission.grp_ancestors(
						(SELECT profile FROM actor.usr WHERE id = $1)
					)).id
				)
			)
        				UNION ALL
			(SELECT	-p.id, $1 AS usr, p.perm, p.depth, p.grantable
			  FROM	permission.grp_perm_map p 
			  WHERE	p.grp IN (SELECT (permission.grp_ancestors(m.grp)).id FROM permission.usr_grp_map m WHERE usr = $1))
		) AS x
	  ORDER BY 2, 3, 1 DESC, 5 DESC ;
$$ LANGUAGE SQL STABLE;

CREATE OR REPLACE FUNCTION permission.usr_can_grant_perm ( iuser INT, tperm TEXT, target_ou INT ) RETURNS BOOL AS $$
DECLARE
	r_usr	actor.usr%ROWTYPE;
	r_perm	permission.usr_perm_map%ROWTYPE;
BEGIN

	SELECT * INTO r_usr FROM actor.usr WHERE id = iuser;

	IF r_usr.active = FALSE THEN
		RETURN FALSE;
	END IF;

	IF r_usr.super_user = TRUE THEN
		RETURN TRUE;
	END IF;


	FOR r_perm IN	SELECT	*
			  FROM	permission.usr_perms(iuser) p
				JOIN permission.perm_list l
					ON (l.id = p.perm)
			  WHERE	(l.code = tperm AND p.grantable IS TRUE)
		LOOP

		PERFORM	*
		  FROM	actor.org_unit_descendants(target_ou,r_perm.depth)
		  WHERE	id = r_usr.home_ou;

		IF FOUND THEN
			RETURN TRUE;
		ELSE
			RETURN FALSE;
		END IF;
	END LOOP;

	RETURN FALSE;
END;
$$ LANGUAGE PLPGSQL;

CREATE OR REPLACE FUNCTION permission.usr_has_perm ( iuser INT, tperm TEXT, target_ou INT ) RETURNS BOOL AS $$
DECLARE
	r_usr	actor.usr%ROWTYPE;
	r_perm	permission.usr_perm_map%ROWTYPE;
BEGIN

	SELECT * INTO r_usr FROM actor.usr WHERE id = iuser;

	IF r_usr.active = FALSE THEN
		RETURN FALSE;
	END IF;

	IF r_usr.super_user = TRUE THEN
		RETURN TRUE;
	END IF;


	FOR r_perm IN	SELECT	*
			  FROM	permission.usr_perms(iuser) p
				JOIN permission.perm_list l
					ON (l.id = p.perm)
			  WHERE	l.code = tperm
			  	OR p.perm = -1 LOOP

		PERFORM	*
		  FROM	actor.org_unit_descendants(target_ou,r_perm.depth)
		  WHERE	id = r_usr.home_ou;

		IF FOUND THEN
			RETURN TRUE;
		ELSE
			RETURN FALSE;
		END IF;
	END LOOP;

	RETURN FALSE;
END;
$$ LANGUAGE PLPGSQL;

COMMIT;

