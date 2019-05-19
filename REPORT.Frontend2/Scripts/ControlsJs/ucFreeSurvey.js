var ucFreeSurvey = (function () {
    var parentElement = $('#divucFreeSurvey').first(); // User Control container element
    var dto = {}; // Single object being used for CRUD from data entry controls

    
    //==========================  SponJobs  ====================================

    var dtoList_SponJobsQuery = []; // List of all objects in the service
    var objDataTable_SponJobsQuery; // JQuery Datatable Object
    var strLastSavedJSON_SponJobsQuery = ''; // Holds the last JSON state saved to DB
    var Expand_SponJobsQuery = function () {
        if (!$('#SponJobsQuerysContent').hasClass('in')) {
            $('#sponJobsQuerys').click();
        }
    }

    var btnSelectClick = function (btn, value) {
        var entry = objDataTable_SponJobsQuery.row($(btn).parents('tr')).data();
        $.blockUI({
            message: '<img src="/Assets/images/waiting-wheel-300x300.gif"  style="width:80px;height:80px"/>',
            css: {
                border: '0px solid #a00',
                width: '80px',
                height: '80px',
                top: '50%',
                left: '50%',
                margin: '-40px 0 0 -40px'
            }
        });
        setTimeout(function () {
            dto = {
                "query": {
                    "question": entry.Number,
                    "value": value
                }
            };
            CallJason("post", "/EPWebService.svc/SelectAnswer", true, $.toJSON(dto), onGetFreeSurveySuccess);
        }, 100);
    }
    var btnSelect1Click = function (btn) {
        btnSelectClick(btn, 1);
    }
    var btnSelect2Click = function (btn) {
        btnSelectClick(btn, 2);
    }
    //====================================================================
    var renderDataTable_SponJobsQuery = function () {
        if (objDataTable_SponJobsQuery)
            return;
        
        objDataTable_SponJobsQuery = $(parentElement).find('#Container_SponJobsQuery').DataTable({
            "paging": false,
            "ordering": false,
            "info": false,
            "searching": false,
            "language": {
                "emptyTable": $('.hdnEmptyList').val()
            },
            "fnRowCallback": function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
                if (aData["Value"] == "1")
                {
                    $(nRow).find('td:eq(2)').css('background-color', 'PapayaWhip');
                    
                    $(nRow).find('td:eq(2)').find(':input[type="checkbox"]').eq(0).prop("value", "0");
                }
                else if (aData["Value"] == "2")
                {
                    $(nRow).find('td:eq(3)').css('background-color', 'PapayaWhip');
                    $(nRow).find('td:eq(3)').find(':input[type="checkbox"]').eq(0).prop("value", "1");
                }
            },
            data: dto.estContactDetails,
            columns: [
                {
                    "width": "5%",
                    "data": "Number",
                    "title": $('.hdnNumber').val()
                },
                {
                    "width": "45%",
                    "data": "ContentEn",
                    "title": "Question",
                },
                {
                    "width": "25%",
                    "data": null,
                    "title": "Answer one",//$('.hdnViewButtonTitle').val() + "/" + $('.hdnEditButtonTitle').val(),
                    "render": function (data, type, full, meta) {
                        if (full.Value == 1) {
                            return "<button id='btnSelect1' >" +
                                "<input role='checkbox' checked='checked' type='checkbox' id='cbxConfCand' class='cbox cbxConfCand'/>" +
                                full.AnswerEn1 +
                                "</input></button>";
                        }
                        else {
                            return "<button id='btnSelect1' >" +
                                "<input role='checkbox' type='checkbox' id='cbxConfCand' class='cbox cbxConfCand'/>" +
                                full.AnswerEn1 +
                                "</input></button>";
                        }
                    }
                },
                {
                    "width": "25%",
                    "data": null,
                    "title": "Answer Two",
                    "render": function (data, type, full, meta) {
                        if (full.Value == 2) {
                            return "<button id='btnSelect2' >" +
                                "<input role='checkbox' checked='checked' type='checkbox' id='cbxConfCand' class='cbox cbxConfCand'/>" +
                                full.AnswerEn2 +
                                "</input></button>";
                        }
                        else {
                            return "<button id='btnSelect2' >" +
                                "<input role='checkbox'  type='checkbox' id='cbxConfCand' class='cbox cbxConfCand'/>" +
                                full.AnswerEn2 +
                                "</input></button>";
                        }
                    }
                },
            ],
        });
        $('#Container_SponJobsQuery tbody').on('click', '#btnSelect1', function (e) {
            e.preventDefault();
            btnSelect1Click(this);
        });
        $('#Container_SponJobsQuery tbody').on('click', '#btnSelect2', function (e) {
            e.preventDefault();
            btnSelect2Click(this);
        });
    };
    var refreshTable_SponJobsQuery = function () {
        objDataTable_SponJobsQuery.clear();
        objDataTable_SponJobsQuery.rows.add(dtoList_SponJobsQuery);
        objDataTable_SponJobsQuery.draw();
    };
    var showWarning = function (message, message2) {
        $('.lblConfirmText').text(message);
        $('.lblConfirmText2').text(message2);
        $("#dialog-confirm").dialog({
            resizable: false,
            height: "auto",
            width: 400,
            modal: true,
            buttons: [
                {
                    text: $(".hdnBack").val(),
                    "class": 'btn btn-default',
                    click: function () {
                        $(this).dialog("close");
                    }
                }
            ]
        });
        $('.ui-dialog-titlebar').hide();
    };
    var onGetFreeSurveySuccess = function (result) {
        $.unblockUI();
        if (result && result.d) {

            document.getElementById("btnSubmit").disabled = true;
            if (result.d == null) {
                dtoList_SponJobsQuery = [];
            }
            else if (result.d.length == 0) {
                dtoList_SponJobsQuery = [];
            }
            else {
                dtoList_SponJobsQuery = result.d;

                var _Select = false;
                for (var i = 0; i < result.d.length; i++) {
                    if (result.d[i].Value == 0) {
                        _Select = true;
                    }
                }
                document.getElementById("btnSubmit").disabled = _Select;
            }
            strLastSavedJSON_SponJobsQuery = JSON.stringify(dtoList_SponJobsQuery);
            renderDataTable_SponJobsQuery();
            refreshTable_SponJobsQuery();
            

            setTimeout(function () {
                Expand_SponJobsQuery();

                objDataTable_SponJobsQuery.column(1).visible(false);
                objDataTable_SponJobsQuery.column(1).visible(true);
            }, 100);
        }
        else {
            showWarning($('.hdnGenericError').val(), '');
        }
    };
    var onSubmitSurveySuccess = function (result) {
        $.unblockUI();
        if (result && result.d) {

            location.reload();
        }
        else {
            showWarning($('.hdnGenericError').val(), '');
        }
    };
    var btnSubmitClick = function () {
        $.blockUI({
            message: '<img src="/Assets/images/waiting-wheel-300x300.gif"  style="width:80px;height:80px"/>',
            css: {
                border: '0px solid #a00',
                width: '80px',
                height: '80px',
                top: '50%',
                left: '50%',
                margin: '-40px 0 0 -40px'
            }
        });
        setTimeout(function () {

            CallJason("post", "/EPWebService.svc/SubmitSurvey", true, null, onSubmitSurveySuccess);
        }, 100);
    }
    var btnSearchClick = function () {
        $.blockUI({
            message: '<img src="/Assets/images/waiting-wheel-300x300.gif"  style="width:80px;height:80px"/>',
            css: {
                border: '0px solid #a00',
                width: '80px',
                height: '80px',
                top: '50%',
                left: '50%',
                margin: '-40px 0 0 -40px'
            }
        });
        setTimeout(function () {

            CallJason("post", "/EPWebService.svc/GetFreeSurvey", true, null, onGetFreeSurveySuccess);
        }, 100);
    }
    var initControl = function () {
        btnSearchClick();
    }
   
    return {
        
        btnSubmitClick:btnSubmitClick,
        initControl: initControl,
    }
})();

ucFreeSurvey.initControl();
