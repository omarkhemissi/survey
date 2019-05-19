var ucManageFreeSurvey = (function () {
    var parentElement = $('#divucSurvey').first(); // User Control container element
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
            columns: [
                {
                    "width": "3%",
                    "data": "Number",
                    "title": $('.hdnNumber').val()
                },
                {
                    "width": "7%",
                    "data": "GroupDesc",
                    "title": $('.hdnGroup').val()
                },
                {
                    "width": "15%",
                    "data": "ContentEn",
                    "title": $('.hdnContentEn').val()
                },
                {
                    "width": "10%",
                    "data": "AnswerEn1",
                    "title": $('.hdnAnswerEn1').val()
                },
                {
                    "width": "10%",
                    "data": "AnswerEn2",
                    "title": $('.hdnAnswerEn2').val()
                },
                {
                    "width": "15%",
                    "data": "ContentAr",
                    "title": $('.hdnContentAr').val()
                },
                {
                    "width": "10%",
                    "data": "AnswerAr1",
                    "title": $('.hdnAnswerAr1').val()
                },
                {
                    "width": "10%",
                    "data": "AnswerAr2",
                    "title": $('.hdnAnswerAr2').val()
                },
                {
                    "width": "11%",
                    "data": null,
                    "title": $('.hdnViewButtonTitle').val() + "/" + $('.hdnEditButtonTitle').val(),
                    "defaultContent": "<button id='btnEdit_Survey' ><i class='fa fa-edit'></button>"
                },
                 {
                     "width": "5%",
                     "data": null,
                     "title": $('.hdnDeleteButtonTitle').val(),
                     "defaultContent": "<button id='btnDelete_Survey' ><i class='fa fa-remove'></i></button>"
                 },
            ],
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
    var onGetFreeSurveySuccess = function (result) {
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
        $(parentElement).find(".drpGroup").val(1);
        $(parentElement).find(".txtContentEn").val('');
        $(parentElement).find(".txtContentAr").val('');
        $(parentElement).find(".txtAnswerAr1").val('');
        $(parentElement).find(".txtAnswerAr2").val('');
        $(parentElement).find(".txtAnswerEn1").val('');
        $(parentElement).find(".txtAnswerEn2").val('');
        clearSelect2Group();
        SetGroupPanelTest($(parentElement).find(".drpGroup").val());
    };
    var setGroupEntry = function (entry) {
        clearGroupEntry();

        $(".hdnQuestId").val(entry.Number);
        $(parentElement).find(".txtNumber").val(entry.Number);
        $(parentElement).find(".drpGroup").val(entry.Group);
        $(parentElement).find(".txtContentEn").val(entry.ContentEn);
        $(parentElement).find(".txtContentAr").val(entry.ContentAr);
        $(parentElement).find(".txtAnswerAr1").val(entry.AnswerAr1);
        $(parentElement).find(".txtAnswerAr2").val(entry.AnswerAr2);
        $(parentElement).find(".txtAnswerEn1").val(entry.AnswerEn1);
        $(parentElement).find(".txtAnswerEn2").val(entry.AnswerEn2);
        setSelect2Group();
        SetGroupPanelTest($(parentElement).find(".drpGroup").val());
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
                "Group": $(parentElement).find(".drpGroup").val(),
                "ContentEn": $(parentElement).find(".txtContentEn").val(),
                "ContentAr": $(parentElement).find(".txtContentAr").val(),
                "AnswerAr1": $(parentElement).find(".txtAnswerAr1").val(),
                "AnswerAr2": $(parentElement).find(".txtAnswerAr2").val(),
                "AnswerEn1": $(parentElement).find(".txtAnswerEn1").val(),
                "AnswerEn2": $(parentElement).find(".txtAnswerEn2").val(),
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

                CallJason("post", "/EPWebService.svc/SaveFreeSurvey", true, JSON.stringify(getDTO()), onGetFreeSurveySuccess);
                
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

            CallJason("post", "/EPWebService.svc/DeleteFreeSurvey", true, $.toJSON(dto), onGetFreeSurveySuccess);
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

            CallJason("post", "/EPWebService.svc/GetFreeSurvey", true, null, onGetFreeSurveySuccess);
        }, 100);
    }

    var clearSelect2Group = function () {
        $(parentElement).find(".drpGroup").parent().find('span.select2-selection__rendered').text($(parentElement).find(".drpGroup").find("option:first-child").text());
    };
    var setSelect2Group = function () {
        $(parentElement).find(".drpGroup").parent().find('span.select2-selection__rendered').text($(parentElement).find(".drpGroup option:selected").text());
    };

    var SetGroupPanelTest = function (value) {
        if (value == 1) {
            $(".Group1Panel").text('Outside world \ العالم الخارجي');
            $(".Group2Panel").text('The inner world \ العالم الداخلي');
        }
        else if (value == 2) {
            $(".Group1Panel").text('The details \ التفاصيل');
            $(".Group2Panel").text('General vue \ الصورة العامة');
        }
        else if (value == 3) {
            $(".Group1Panel").text('Mind \ العقل');
            $(".Group2Panel").text('The heart \ القلب');
        }
        else if (value == 4) {
            $(".Group1Panel").text('Selection \  التحديد');
            $(".Group2Panel").text('Flexibility \ المرونة');
        }
    }
    $('#MainContent_ucSurvey_drpGroup').change(function () {
        SetGroupPanelTest($(this).val());
    })
    //========================== initControl ====================================

    // mandatory to add autocomplete box 
    var attachSelect2 = function () {

        $(parentElement).find(".drpGroup").select2({
            theme: "bootstrap",
            width: '100%'
        });
    }
    var initControl = function () {
        attachSelect2();

        btnSearchClick();
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

ucManageFreeSurvey.initControl();
