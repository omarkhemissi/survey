var UserInfo = (function () {
    //var parentElement = $('#divucSponJobsResult').first(); // User Control container element
    var dto = {}; // Single object being used for CRUD from data entry controls

    var onSubmitClick = function (e) {
        
        //document.getElementById("MainContent_txtName").disabled = true;
        //document.getElementById("MainContent_dpDateMin").disabled = true;
        //document.getElementById("MainContent_txtEmailAddress").disabled = true;
        
        //setTimeout(function () {

        //    document.getElementById("MainContent_btnSubmit").disabled = true;
        //}, 100);
        
    };
    
    var initControl = function () {
        
    }
    
    return {
        onSubmitClick:onSubmitClick,
        initControl: initControl
    }
})();

UserInfo.initControl();
