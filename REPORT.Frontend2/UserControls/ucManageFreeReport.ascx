<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageFreeReport.ascx.cs" Inherits="REPORT.Frontend.ManageFreeReport" %>
<%@ Register Assembly="REPORT.Controls" Namespace="REPORT.Controls" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

   
    <input type="hidden" runat="server" id="hdnUserId" class="hdnUserId" /> 
    <input type="hidden" runat="server" id="hdnQuestId" class="hdnQuestId" /> 

    <input type="hidden" runat="server" id="hdnNumber" class="hdnNumber" value="<%$ Resources: EP, ep_lbl_Number %>" />
    <input type="hidden" runat="server" id="hdnName" class="hdnName" value="<%$ Resources: EP, ep_lbl_Name %>" />
    <input type="hidden" runat="server" id="hdnBirthday" class="hdnBirthday" value="<%$ Resources: EP, ep_lbl_Birthday %>" />
    <input type="hidden" runat="server" id="hdnEmail" class="hdnEmail" value="<%$ Resources: EP, ep_lbl_Email %>" />
    <input type="hidden" runat="server" id="hdnResult" class="hdnResult" value="<%$ Resources: EP, ep_lbl_Result %>" /> 
    <input type="hidden" runat="server" id="hdnDate" class="hdnDate" value="<%$ Resources: EP, ep_lbl_Date %>" /> 

    <%--==========================  Spon Jobs Batchs ===============================--%>

    <div id="divucReport" class="col-sm-12">
        
        <div class="form-group">
            
            <div class="col-sm-2">
                <button type="button" id="btnSearch" onclick="ucReport.btnSearchClick()" class="btn btn-default">
                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Search%>" />
                </button>
            </div>
        </div>
        <div class="sponJobsQuerys panel panel-primary sky-form ServicesForm boxed form-horizontal" id="SponJobsQuerys">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-sm-6">
                        <h3 class="panel-title" style="display: inline;">
                            <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_JobCandidats %>"></asp:Literal></h3>
                    </div>

                    <div class="col-sm-6">
                        <span class="panel-title white pullLeft">
                            <a data-toggle="collapse" id="sponJobsQuerys" data-parent="#ExceptionGroups" href="#SponJobsQuerysContent" aria-expanded="false" class="arrowServ collapsed" title="">
                                <asp:Label ID="Label1" runat="server" Text='<%$ Resources: EP, ep_lbl_Count%>'></asp:Label>
                                :
                                <asp:Label class="lblSponJobsQueryCount" runat="server"></asp:Label>
                            </a>
                        </span>
                    </div>
                </div>
            </div>

            <div class="panel-body collapse" id="SponJobsQuerysContent">
                <div class="form-group">

                    <div class="col-sm-12">
                        <table id="Container_SponJobsQuery" class="table table-hover table-bordered medFont usersGridView Container_SponJobsQuery" width="100%"></table>
                    </div>
                </div>
            </div>
        </div>

        <div id="divSurveyEdit" class="modal" style="font-size: 18px;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-body">
        <div class="col-sm-12">
            <div class="sticky-scroll">
                <div class="Count-Adjt-pnl panel panel-primary sky-form ServicesForm boxed form-horizontal" id="groupPanelJobsNeed" >
                    <div class="panel-heading">
                        <h3 class="panel-title" style="display: inline;">
                            <asp:Label CssClass="lblSurveyEdit" runat="server"  /></h3>
                    </div>
                    <div class="panel-body">

                        <div class="form-group">
                            <div class="col-sm-1">
                                <label  class="control-label lblJobCode">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Name%>" /></label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtName" Enabled="false" CssClass="form-control txtName" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                            </div>

                            <div class="col-sm-2">
                                <label  class="control-label lblJobCode">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_BirthDay%>" /></label>
                            </div>
                            <div class="col-sm-2">
                                <asp:TextBox ID="txtBirthDay" Enabled="false" CssClass="form-control txtBirthDay" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-1">
                                <label  class="control-label lblJobCode">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Email%>" /></label>
                            </div>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtEmail" Enabled="false" CssClass="form-control txtEmail" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                            </div>
                           
                        </div>

                        <div class="form-group">
                            <div class="col-sm-1">
                                <label  class="control-label lblJobCode">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Result%>" /></label>
                            </div>
                            <div class="col-sm-2">
                                <asp:TextBox ID="txtResult" MaxLength="4" CssClass="form-control txtResult" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:RegularExpressionValidator CssClass="field-error" ID="EMailValidator" ValidationGroup="SurveyGroupEntry" ControlToValidate="txtResult" ValidationExpression="^[EI][SN][TF][JP]$" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_ResultValidator%>"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="Required4" ValidationGroup="SurveyGroupEntry" ControlToValidate="txtResult" CssClass="field-error" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group col-sm-12">
                            <div class="col-sm-6">
                                <button type="button" id="btnSave" onclick="ucReport.btnSaveClick()" class="btn btn-default ">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_btnOK%>" /></button>
                                <button type="button" class="btn btn-default" onclick="ucReport.btnCancelClick()">
                                    <asp:Localize ID="Localize3" runat="server" Text='<%$ Resources: EP, ep_lbl_btnCancel%>' /></button>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
                    </div>
                </div>
            </div>
        </div>

            <div id="dialog-confirm" title="" style="display: none; font-size: 18px;">
            <p>
                <asp:Label runat="server" ID="lblConfirmText" CssClass="lblConfirmText"></asp:Label>
            </p>
            <p>
                <asp:Label runat="server" ID="lblConfirmText2" CssClass="lblConfirmText2"></asp:Label>
            </p>
        </div>

    </div>

    

    <%--==========================  Spon Jobs Needs ===============================--%>
    
    



<%--<script src="/Scripts/ControlsJs/SponJobs/ucSponJobUser.js?v=33"></script>--%>
<script src="/Scripts/ControlsJs/ucReport.js?v=33"></script>

