function InitAttachmentDataTable(selector)
{
    dt  = $(selector).DataTable({
        "paging": false, "ordering": false, "info": false, "searching": false, "language": { "emptyTable": $('.hdnContactNoDataToSave').val() },
        columnDefs: [{ "targets": [0], "visible": true }, { "targets": [1], "visible": true }, ],
        columns: [{ "data": "FileName", "title": $('.hdnAttachments').val() }, {
            "data": "MdAttachmentName", "title": $('.hdnAttachmentType').val(),
            "render": function (data, type, full, meta) {
                return '<a href="' + full.FileURL + '">' + data + '</a>';
            },
        }],
    });
    $(selector + ' tbody').css('cursor', 'pointer');
    return dt ;
}





var CreateAttachmentDT = (function (selector) {
    var VTable = {
        selector: selector,
        jQObj : null,
        dt:null ,
        Init: function () {
            this.dt = InitAttachmentDataTable(selector);
            this.jQObj = $(selector);
            return this;
        },
        SetDS: function (ds) {
            this.dt.clear();
            this.dt.draw();
            this.dt.rows.add(ds);
            this.dt.draw();

        },
    }

    return VTable.Init();
});