
    var commonJSUtil = (function () {
        return {
            showValidationPopUp: function (allowNext, nextClickCallback) {
                var myButtons = [];
                if (allowNext) {
                    myButtons.push({
                        text: '<%= Resources.EP.ep_lbl_Next %>',
                        "class": 'btn btn-default',
                        click: nextClickCallback
                    });
                }
                myButtons.push({
                    text: '<%= Resources.EP.ep_lbl_Back %>',
                    "class": 'btn btn-default',
                    click: function () {
                        $.unblockUI();
                        $(this).dialog("close");
                    }
                });
                $("#divStepValidation").dialog({
                    resizable: false,
                    height: "auto",
                    width: 600,
                    modal: true,
                    buttons: myButtons
                });
                $('.ui-dialog-titlebar').hide();
            },
            beforeConfirmation: function () {
                $('.itemToHide').hide();
                $('input[type="text"]').not('.fixedstate-field').attr("readonly", true);
                $('input[type="number"]').not('.fixedstate-field').attr("readonly", true);
                $('input[type="checkbox"]').not('.fixedstate-field').prop("disabled", true);
                $('input[type="radio"]').not('.fixedstate-field').prop("disabled", true);
                $('textarea').not('.fixedstate-field').attr("readonly", true);
                $('select').not('.fixedstate-field').prop("disabled", true);
            },
            confirmationBack: function () {
                $('.itemToHide').show();
                $('input[type="text"]').not('.fixedstate-field').removeAttr("readonly");
                $('input[type="number"]').not('.fixedstate-field').removeAttr("readonly");
                $('input[type="checkbox"]').not('.fixedstate-field').removeAttr("disabled");
                $('input[type="radio"]').not('.fixedstate-field').removeAttr("disabled");
                $('textarea').not('.fixedstate-field').removeAttr("readonly");
                $('select').not('.fixedstate-field').removeAttr("readonly");
            },
            validateEMail: function (value) {

            },
            validateMobile: function (value) {

            },
            validateIntNumber: function (value) {

            },
            validateNumber: function (value) {

            },
            validateGroup: function (validationGroup) {
                var validationResult = Page_ClientValidate(validationGroup);
                return validationResult;
            },
        };
    })();

    function CallJason(CallType, Methodurl, isASync, parameters, SuccessCallBack, sender, DontBlock) {

        if (isASync) {
            //$.blockUI({
            //    message: '<h3 class="padding20 text-center"><img src="/Assets/images/refresh.gif" /> برجاء الانتظار ...</h3>',
            //    css: { border: '2px solid #a00' }
            //});

            //$(sender).blockUI({
            //    message: '<h1 style="direction:rtl;float:right;"><img src="busy.gif" /> برجاء الانتظار ...</h1>',
            //    css: { border: '3px solid #a00' }
            //});
        }

        $.ajax({
            type: CallType,
            url: Methodurl,
            async: isASync,
            data: parameters,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                SuccessCallBack(msg);
            },
            error: function (msg) {
                $.unblockUI();

                if (msg && msg.status && msg.status == 401) // Handle Session Timeout
                    window.location.href = '/';

                HandlingErrorMessages(msg);
            }
        });
    }
    function HandlingErrorMessages(ErrMsg) {
    }
    $(document).ajaxStop($.unblockUI);
   