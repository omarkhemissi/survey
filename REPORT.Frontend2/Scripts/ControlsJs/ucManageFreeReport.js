var ucManageFreeReport = (function () {
    var parentElement = $('#divucReport').first(); // User Control container element
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
                    if (aData["Status"] == "1")
                    {
                        //$('td', nRow).css('background-color', 'PaleGreen');
                    }
                    else if (aData["Status"] == "2")
                    {
                        //$('td', nRow).css('background-color', 'PowderBlue');
                    }
                    else if (aData["Status"] == "3")
                    {
                        //$('td', nRow).css('background-color', 'DarkSalmon');
                    }
                },
            data: dto.estContactDetails,
            columnDefs: [
                {
                    "width": "11%",
                    "targets": [6],
                    "data": null,
                    "title": $('.hdnViewButtonTitle').val() + "/" + $('.hdnEditButtonTitle').val(),
                    "defaultContent": "<button id='btnEdit_Survey' ><i class='fa fa-edit'></button>"
                },
                 {
                     "width": "5%",
                     "targets": [7],
                     "data": null,
                     "title": $('.hdnDeleteButtonTitle').val(),
                     "defaultContent": "<button id='btnDelete_Survey' ><i class='fa fa-remove'></i></button>"
                 },
            ],
            columns: [
                {
                    "width": "5%",
                    "data": "Number",
                    "title": $('.hdnNumber').val()
                },
                {
                    "width": "20%",
                    "data": "Name",
                    "title": $('.hdnName').val()
                },
                {
                    "width": "15%",
                    "data": "BirthDay",
                    "title": $('.hdnBirthday').val()
                },
                {
                    "width": "25%",
                    "data": "Email",
                    "title": $('.hdnEmail').val()
                },
                {
                    "width": "5%",
                    "data": "Result",
                    "title": $('.hdnResult').val()
                },
                {
                    "width": "10%",
                    "data": "Date",
                    "title": $('.hdnDate').val()
                }
            ],
            "createdRow": function (row, data, dataIndex) {
                if (data.Status == "R" || data.Status == "W")
                    $('td:eq(7)', row).html('<a id="btnShowValidation" class="btnShowValidation" onclick="usNatException.btnValidationClick(this)"><span class="glyphicon glyphicon-exclamation-sign alert-danger" aria-hidden="true"></span></a>');
            }
        });
        $('#Container_SponJobsQuery tbody').on('click', '#btnEdit_Survey', function (e) {
            e.preventDefault();
            btnEditClick(this);
        });
        $('#Container_SponJobsQuery tbody').on('click', '#btnDelete_Survey', function (e) {
            e.preventDefault();
            btnDeleteClick(this);
        });
    };

    var refreshTable_SponJobsQuery = function () {
        objDataTable_SponJobsQuery.clear();
        objDataTable_SponJobsQuery.rows.add(dtoList_SponJobsQuery);
        objDataTable_SponJobsQuery.draw();

        $(".lblSponJobsQueryCount").text(dtoList_SponJobsQuery.length);
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
    var onGetReportSuccess = function (result) {
        $.unblockUI();
        if (result && result.d) {

            if (result.d == null) {
                dtoList_SponJobsQuery = [];
            }
            else if (result.d.length == 0) {
                dtoList_SponJobsQuery = [];
            }
            else {
                dtoList_SponJobsQuery = result.d;
            }
            strLastSavedJSON_SponJobsQuery = JSON.stringify(dtoList_SponJobsQuery);
            renderDataTable_SponJobsQuery();
            refreshTable_SponJobsQuery();
            objDataTable_SponJobsQuery.column(1).visible(false);
            objDataTable_SponJobsQuery.column(1).visible(true);

            setTimeout(function () {
                Expand_SponJobsQuery();
            }, 100);
        }
        else {
            showWarning($('.hdnGenericError').val(), '');
        }
    };
    var hideEditPanel = function () {
        $("#divSurveyEdit").modal('hide');
    }
    var showEditPanel = function (forEdit) {
        if (forEdit == 1) {
            $('.lblSurveyEdit').text($('.hdnViewButtonTitle').val() + "/" + $('.hdnEditButtonTitle').val());
            $("#divJobCount").hide();
        }
        else {
            $('.lblSurveyEdit').text($('.hdnAddNewJobButtonTitle').val());
            $("#divJobCount").show();
        }
        //
        $("#divSurveyEdit").modal('show');
    }

    var clearGroupEntry = function () {
        $(".hdnQuestId").val('');

        $(parentElement).find(".txtNumber").val('');
        $(parentElement).find(".txtName").val('');
        $(parentElement).find(".txtBirthDay").val('');
        $(parentElement).find(".txtEmail").val('');
        $(parentElement).find(".txtResult").val('');

        //clearSelect2JobGroup();
    };
    var setGroupEntry = function (entry) {
        clearGroupEntry();

        $(".hdnQuestId").val(entry.Number);
        $(parentElement).find(".txtNumber").val(entry.Number);
        $(parentElement).find(".txtName").val(entry.Set);
        $(parentElement).find(".txtBirthDay").val(entry.Group);
        $(parentElement).find(".txtEmail").val(entry.ContentEn);
        $(parentElement).find(".txtResult").val(entry.ContentAr);

        //setSelect2JobGroup();
    };

    var btnEditClick = function (btn) {
        var data = objDataTable_SponJobsQuery.row($(btn).parents('tr')).data();
        setGroupEntry(data);
        showEditPanel(1);
    };
    var btnAddClick = function () {
        clearGroupEntry();
        showEditPanel(0);
    };
    var getDTO = function () {

        var action = 'C';
        if ($(".hdnQuestId").val() != '') {
            action = 'U';
        }
        dto = {
            "query": {
                "Number": $(".hdnQuestId").val() == "" ? 0 : $(".hdnQuestId").val(),
                "Name": $(parentElement).find(".txtName").val(),
                "BirthDay": $(parentElement).find(".txtBirthDay").val(),
                "Email": $(parentElement).find(".txtEmail").val(),
                "Result": $(parentElement).find(".txtResult").val(),
                "CrudAction": action
            }
        };
        return dto;
    };
    var btnSaveClick = function () {
        if (commonJSUtil.validateGroup('SurveyGroupEntry')) {
            hideEditPanel();

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

                CallJason("post", "/EPWebService.svc/SaveReport", true, JSON.stringify(getDTO()), onGetSurveySuccess);
                
            }, 100);
        }
    }
    var btnDeleteClick = function (btn) {
        var data = objDataTable_SponJobsQuery.row($(btn).parents('tr')).data();

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
                    "Number": data.Number,
                    "CrudAction": "D"
                }
            };

            CallJason("post", "/EPWebService.svc/DeleteReport", true, $.toJSON(dto), onGetReportSuccess);
        }, 100);
    }
    var btnCancelClick = function () {
        hideEditPanel();
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

            CallJason("post", "/EPWebService.svc/GetReport", true, null, onGetReportSuccess);
        }, 100);
    }
    var initControl = function () {
        
    }
   
    return {
        initControl: initControl,
        btnSaveClick: btnSaveClick,
        btnCancelClick: btnCancelClick,
        btnEditClick: btnEditClick,
        btnAddClick: btnAddClick,
        btnDeleteClick: btnDeleteClick,
        btnSearchClick:btnSearchClick
    }
})();

ucManageFreeReport.initControl();
