//$(document).ready(function () {
//    LoadCommercialPermitInfo(126407, ".CommercialPermitInfo");
//    LoadCommercialRegistryInfo(89494, ".CommercialRegistryInfo");
//});

function InitInfoTable(selector) {
    dt = $(selector).DataTable({
        "paging": false, "ordering": false, "info": false, "searching": false, "language": { "emptyTable": $('.hdnContactNoDataToSave').val() },
        columnDefs: [{ "targets": [0], "visible": true }, { "targets": [1], "visible": true }, ],
        columns: [
            { "data": "key" , "title": $('.hdnAttachments').val() },
            {
                "data": "value", "title": $('.hdnAttachmentType').val(),
                //"render": function (data, type, full, meta) {
                //    return '<a href="' + full.FileURL + '">' + data + '</a>';
                //},
            }
        ],
    });
    $(selector + ' thead').css('display', 'none');
    $(selector + ' tbody').css('cursor', 'pointer');
    return dt;
}

var CreateInfoDT = (function (selector) {
    var VTable = {
        selector: selector,
        jQObj: null,
        dt: null,
        Init: function () {
            this.dt = InitInfoTable(selector);
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

function DisplayDictionaryInTable(selector, dic) {
    var it = CreateInfoDT(selector);
    var ta = [];

    var JSonDic = JSON.parse(dic);
    $.each(JSonDic, function (Key, Value) {
        ta.push({ key: Key, value: Value, });
    })
    it.SetDS(ta);
}



function LoadCommercialPermitInfoTable(commercialPermit, selector) {
    CallJason("post", "/EPWebService.svc/GetCommercialPermitInfo", false, $.toJSON({ "commercialPermit": commercialPermit }), function (result) {
        if (result && result.d) {
            DisplayDictionaryInTable(selector, result.d);
        }
    });
}


function LoadCommercialRegistryInfoTable(CommercialRegistry, selector) {
    CallJason("post", "/EPWebService.svc/GetCommercialRegistryInfo", false, $.toJSON({ "CommercialRegistry": CommercialRegistry }), function (result) {
        if (result && result.d) {
            DisplayDictionaryInTable(selector, result.d);
        }
    });
}


function LoadCommercialPermitInfo(commercialPermit , selector) {
    CallJason("post", "/EPWebService.svc/GetCommercialPermitInfo", false, $.toJSON({ "commercialPermit": commercialPermit }), function (result) {
        if (result && result.d) {
            DisplayDictionary(selector, result.d);
        }
    });
}

function LoadCommercialRegistryInfo(CommercialRegistry, selector) {
    CallJason("post", "/EPWebService.svc/GetCommercialRegistryInfo", false, $.toJSON({"CommercialRegistry": CommercialRegistry
    }), function (result) {
        if (result && result.d) {
            DisplayDictionary(selector, result.d);
        }
    });
}


function DisplayDictionary(selector , dic)
{
    if (dic != null)
    {
        var htmlDiv = $(selector);
        htmlDiv.html("");
        var html = "" ;        
        var JSonDic = JSON.parse(dic);
        var BkgStyle1 = "background-color: gold";
        var BkgStyle2 = "background-color: blanchedalmond";
        var inputstyle = 'style="background-color: transparent ; border: none ; width:100% ; margin-bottom: 1px;margin-top: 1px;"';
        var bStyle = false;
        
        var nKeys = 0;
        $.each(JSonDic, function (Key, Value) {
            nKeys++ ;
        })

        var nCur = 0;
        //$.each(JSonDic, function (Key, Value) {
            
        //    var html1 = '<div class="col-sm-5"><label     style="font-size: 10px;" ' + inputstyle + ' > ' +Key + '</label></div>';
        //    var html2 = '<div class="col-sm-6"><input ' + inputstyle + ' value="' + Value + '"/> </div>';

        //    html = html + '<div class="form-group col-sm-6"  style="margin-bottom: 2px;' + (bStyle ? BkgStyle1 : BkgStyle2) + '">' + html1 + html2 + '</div>';
        //    bStyle = !bStyle;
        //    htmlDiv.html(html);
        //});
        var FormTag = '<div class="form-group">'

        $.each(JSonDic, function (Key, Value) {

            var html1 = '<div class="col-sm-5"><label     style="font-size: 10px;" ' + inputstyle + ' > ' + Key + '</label></div>';
            var html2 = '<div class="col-sm-6"><input ' + inputstyle + ' value="' + Value + '"/> </div>';
            if (nCur % 2 == 0) {
                //insert form to include two rows
                html = html + FormTag;
            }
            html = html + '<div class="form-group col-sm-6"  style="margin-bottom: 2px;' + (bStyle ? BkgStyle1 : BkgStyle2) + '">' + html1 + html2 + '</div>';
            if (nCur % 2 == 1 || nCur == nKeys) {
                //insert the closing div of the form tag
                html = html + '</div>';
            }
            bStyle = !bStyle;
            htmlDiv.html(html);
            nCur++;
        });



        htmlDiv.html(html);        
    }
    
}