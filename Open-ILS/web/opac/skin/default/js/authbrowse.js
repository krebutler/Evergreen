dojo.require("openils.CGI");
dojo.require("MARC.FixedFields");
dojo.require("openils.AuthorityControlSet");
var cgi;

attachEvt("common", "init", doAuthorityBrowse);

/* repeatable, supports all args or no args */
function doAuthorityBrowse(axis, term, page, per_page) {
    console.log("doAuthorityBrowse 1");
    if (!axis) {
        if (!cgi) cgi = new openils.CGI();
        axis = cgi.param(PARAM_AUTHORITY_BROWSE_AXIS);
        term = cgi.param(PARAM_AUTHORITY_BROWSE_TERM);
        page = 0;
        per_page = 20;
    }
    console.log("doAuthorityBrowse 2");

    var url = '/opac/extras/browse/marcxml/authority.'
        + axis
        + '/1' /* this will be OU if OU ever means anything for authorities */
        + '/' + term /* FIXME urlescape or however it's spelt */
        + '/' + page
        + '/' + per_page
    ;
    console.log("doAuthorityBrowse 3: " + url);
    dojo.xhrGet({
        "url": url,
        "handleAs": "xml",
        "content": {"format": "marcxml"},
        "preventCache": true,
        "load": displayAuthorityRecords
    });
}

function displayAuthorityRecords(doc) {
    console.log("displayAuthorityRecords");
    var acs_helper = new openils.AuthorityControlSet();
    console.log("got acs_helper");
    dojo.query("record", doc).forEach(
        function(record) {
            console.log("record");
            var m = new MARC.Record({"xml": record});
            var s = m.extractFixedField("Subj");
            var cs = acs_helper.controlSetByThesaurusCode(s);
            console.log("got cs");
            dojo.create(
                "div", {
                    "innerHTML": "record here, control set is " + cs
                }, "test-holder"
            );
        }
    );
}
