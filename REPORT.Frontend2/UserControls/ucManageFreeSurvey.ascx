<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageFreeSurvey.ascx.cs" Inherits="REPORT.Frontend.ManageFreeSurvey" %>
<%@ Register Assembly="REPORT.Controls" Namespace="REPORT.Controls" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

   
    <input type="hidden" runat="server" id="hdnUserId" class="hdnUserId" /> 
    <input type="hidden" runat="server" id="hdnQuestId" class="hdnQuestId" /> 

    <input type="hidden" runat="server" id="hdnNumber" class="hdnNumber" value="<%$ Resources: EP, ep_lbl_Number %>" />
    <input type="hidden" runat="server" id="hdnSetPage" class="hdnSetPage" value="<%$ Resources: EP, ep_lbl_SetPage %>" />
    <input type="hidden" runat="server" id="hdnGroup" class="hdnGroup" value="<%$ Resources: EP, ep_lbl_Group %>" />
    <input type="hidden" runat="server" id="hdnContentEn" class="hdnContentEn" value="<%$ Resources: EP, ep_lbl_ContentEn %>" />
    <input type="hidden" runat="server" id="hdnContentAr" class="hdnContentAr" value="<%$ Resources: EP, ep_lbl_ContentAr %>" /> 

    <input type="hidden" runat="server" id="hdnAnswerAr1" class="hdnAnswerAr1" value="<%$ Resources: EP, ep_lbl_AnswerAr1 %>" />
    <input type="hidden" runat="server" id="hdnAnswerAr2" class="hdnAnswerAr2" value="<%$ Resources: EP, ep_lbl_AnswerAr2 %>" />
    <input type="hidden" runat="server" id="hdnAnswerEn1" class="hdnAnswerEn1" value="<%$ Resources: EP, ep_lbl_AnswerEn1 %>" />
    <input type="hidden" runat="server" id="hdnAnswerEn2" class="hdnAnswerEn2" value="<%$ Resources: EP, ep_lbl_AnswerEn2 %>" />

    <%--==========================  Spon Jobs Batchs ===============================--%>

    <div id="divucSurvey" class="col-sm-12">
        
        <div class="form-group">
            <div class="col-sm-2">
                <button type="button" id="btnAddNew" onclick="ucManageFreeSurvey.btnAddClick()" class="btn btn-default">
                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Add%>" />
                </button>
            </div>
            <div class="col-sm-2">
                <button type="button" id="btnSearch" onclick="ucManageFreeSurvey.btnSearchClick()" class="btn btn-default">
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
                    <div class="col-sm-12" style="font-size: 13px; ">
                        <table id="Container_SponJobsQuery" class="blueTable table-hover table-bordered usersGridView Container_SponJobsQuery"  width="100%"></table>
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
                                <label class="control-label lblJobCount">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Number%>" /></label>
                            </div>
                            <div class="col-sm-2">
                                <cc1:NumericTextBox ID="txtNumber" Enabled="false" Text="1" CssClass="form-control txtNumber fixedstate-field" runat="server" AutoCompleteType="Disabled" autocomplete="off"></cc1:NumericTextBox>
                            </div>

                            <div class="col-sm-1">
                                <label class="control-label lblJobGroup">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Group%>" /><span class="red-astrisk itemToHide">*</span></label>
                            </div>
                            <div class="col-sm-5">
                                <cc1:CustomDropDownList ID="drpGroup" CssClass="select form-control drpGroup" runat="server" 
                                    AppendDataBoundItems="true"  >
                                    <asp:ListItem Text="Affinity" Value="1" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Collection of information" Value="2" Selected="false"></asp:ListItem>
                                    <asp:ListItem Text="Make decision" Value="3" Selected="false"></asp:ListItem>
                                    <asp:ListItem Text="Time spending" Value="4" Selected="false"></asp:ListItem>
                                </cc1:CustomDropDownList>
                                <div class="col-sm-1">
                                    <asp:RequiredFieldValidator ID="drpJobGroupValidator1" ValidationGroup="SurveyGroupEntry" ControlToValidate="drpGroup" CssClass="field-error" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-2">
                                <label  class="control-label lblJobCode">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_ContentEn%>" /><span class="red-astrisk itemToHide">*</span></label>
                            </div>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtContentEn" CssClass="form-control txtContentEn" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                            </div>
                            <div class="col-sm-1">
                                <asp:RequiredFieldValidator ID="Required3" ValidationGroup="SurveyGroupEntry" ControlToValidate="txtContentEn" CssClass="field-error" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-2">
                                <label  class="control-label lblJobCode">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_ContentAr%>" /></label>
                            </div>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtContentAr" CssClass="form-control txtContentAr" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                            </div>
                            <%--<div class="col-sm-1">
                                <asp:RequiredFieldValidator ID="Required4" ValidationGroup="SurveyGroupEntry" ControlToValidate="txtContentAr" CssClass="field-error" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                            </div>--%>
                        </div>

                        <div id="Group1Panel" style="border-color:#996633;border-width:2px;border-style:Solid;">
		                    <fieldset>
			                    <legend><asp:Label class="Group1Panel" runat="server"></asp:Label></legend>
                                <div class="form-group">
                                    <div class="col-sm-2">
                                        <label  class="control-label lblJobCode">
                                            <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_AnswerEn1%>" /><span class="red-astrisk itemToHide">*</span></label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtAnswerEn1" CssClass="form-control txtAnswerEn1" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="SurveyGroupEntry" ControlToValidate="txtAnswerEn1" CssClass="field-error" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-2">
                                        <label class="control-label lblJobCode">
                                            <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_AnswerAr1%>" /></label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtAnswerAr1" CssClass="form-control txtAnswerAr1" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                                    </div>
                                    <%--<div class="col-sm-1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="SurveyGroupEntry" ControlToValidate="txtAnswerAr1" CssClass="field-error" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                                    </div>--%>
                                </div>
		                    </fieldset>
	                    </div>

                        <div id="Group2Panel" style="border-color:#996633;border-width:2px;border-style:Solid;">
		                    <fieldset>
			                    <legend><asp:Label class="Group2Panel" runat="server"></asp:Label></legend>
                                <div class="form-group">
                                    <div class="col-sm-2">
                                        <label  class="control-label lblJobCode">
                                            <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_AnswerEn2%>" /><span class="red-astrisk itemToHide">*</span></label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtAnswerEn2" CssClass="form-control txtAnswerEn2" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="SurveyGroupEntry" ControlToValidate="txtAnswerEn2" CssClass="field-error" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-2">
                                        <label  class="control-label lblJobCode">
                                            <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_AnswerAr2%>" /></label>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtAnswerAr2" CssClass="form-control txtAnswerAr2" runat="server" AutoCompleteType="Disabled" autocomplete="off" onkeydown="return(event.keyCode!=13);"></asp:TextBox>
                                    </div>
                                    <%--<div class="col-sm-1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="SurveyGroupEntry" ControlToValidate="txtAnswerAr2" CssClass="field-error" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                                    </div>--%>
                                </div>
                             </fieldset>
	                    </div>

                        <div class="form-group col-sm-12">
                            <div class="col-sm-6">
                                <button type="button" id="btnSave" onclick="ucManageFreeSurvey.btnSaveClick()" class="btn btn-default ">
                                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_btnOK%>" /></button>
                                <button type="button" class="btn btn-default" onclick="ucManageFreeSurvey.btnCancelClick()">
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
<script src="/Scripts/ControlsJs/ucManageFreeSurvey.js?v=33"></script>
