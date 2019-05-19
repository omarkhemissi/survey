<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="REPORT.Frontend.UserInfo" %>

<%@ Register Assembly="REPORT.Controls" Namespace="REPORT.Controls" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--Localization Related--%>
    
    <input type="hidden" runat="server" id="hdnEditButtonTitle" class="hdnEditButtonTitle" value="<%$ Resources: EP, ep_lbl_Edit %>" />
    <input type="hidden" runat="server" id="hdnDeleteButtonTitle" class="hdnDeleteButtonTitle" value="<%$ Resources: EP, ep_lbl_Delete %>" />
    <input type="hidden" runat="server" id="hdnViewButtonTitle" class="hdnViewButtonTitle" value="<%$ Resources: EP, ep_lbl_View %>" />
    <input type="hidden" runat="server" id="hdnBack" class="hdnBack" value="<%$ Resources: EP, ep_lbl_Back %>" />
    <input type="hidden" runat="server" id="hdnEmptyList" class="hdnEmptyList" value="<%$ Resources: EP, ep_lbl_EmptyMessasge %>" />
    <input type="hidden" runat="server" id="hdnAddNewJobButtonTitle" class="hdnAddNewJobButtonTitle" value="<%$ Resources: EP, ep_lbl_AddNewJob %>" />
    <input type="hidden" runat="server" id="hdnEditJobsButtonTitle" class="hdnEditJobsButtonTitle" value="<%$ Resources: EP, ep_lbl_Jobs %>" />
    <input type="hidden" runat="server" id="hdnEditSpecButtonTitle" class="hdnEditSpecButtonTitle" value="<%$ Resources: EP, ep_lbl_Specialities %>" />
    <input type="hidden" runat="server" id="hdnEditEducButtonTitle" class="hdnEditEducButtonTitle" value="<%$ Resources: EP, ep_lbl_Education_Levels %>" />
    <input type="hidden" runat="server" id="hdnCandButtonTitle" class="hdnCandButtonTitle" value="<%$ Resources: EP, ep_lbl_JobCandidature %>" />
    <input type="hidden" runat="server" id="hdnJobCandCount" class="hdnJobCandCount" value="<%$ Resources: EP, ep_lbl_JobCandCount %>" />
    
    <%--Localization Related End--%>


    <div class="col-sm-8">
        <asp:Label ID="txtmessage" CssClass="control-label txtmessage " runat="server"
                            Text="You successfully complete the survey, kindly provide details below to send you the result">
        </asp:Label>

    </div>
       
    <div id="divucSponJobsResult" class="col-sm-6">
        <div class="sponJobsQuerys panel panel-primary sky-form ServicesForm boxed form-horizontal" id="SponJobsQuerys">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-sm-6">
                        <h3 class="panel-title" style="display: inline;">
                            <asp:Literal runat="server" Text="Contact detail"></asp:Literal></h3>
                    </div>
                </div>
            </div>

            <div class="panel-body " id="SponJobsQuerysContent">
                <div class="form-group">
                    <div class="col-sm-2">
                        <asp:Label ID="lblName" CssClass="control-label  " runat="server"
                            Text="<%$ Resources: EP, ep_lbl_Name %>">
                        </asp:Label>
                    </div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtName" CssClass="form-control txtName" runat="server" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="field-error" ID="RequiredtxtName" ValidationGroup="UserInfoValidator" ControlToValidate="txtName" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-2">
                        <asp:Label ID="lblBirthDay"  CssClass="control-label lblBirthDay " runat="server"
                            Text="<%$ Resources: EP, ep_lbl_BirthDay %>">
                        </asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <cc1:DatePicker runat="server" ID="dpDateMin" CssClass="form-control DatePicker ll-skin-vigo dpDateMin"
                            AutoLinkjQuery="false"
                            DateFormat="dd/MM/yyyy"
                            YearRange="-90:+00"
                            ChangeMonthAndYear="true">
                        </cc1:DatePicker>
                        <asp:RequiredFieldValidator CssClass="field-error" ID="RequireddpDateMin" ValidationGroup="UserInfoValidator" ControlToValidate="dpDateMin" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-2">
                        <asp:Label ID="lblEmail" CssClass="control-label lblEmail " runat="server"
                            Text="<%$ Resources: EP, ep_lbl_Email %>">
                        </asp:Label>
                    </div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtEmailAddress" CssClass="form-control txtEmailAddress" runat="server" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox>
                        <asp:RegularExpressionValidator CssClass="field-error" ID="EMailValidator" ValidationGroup="UserInfoValidator" ControlToValidate="txtEmailAddress" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_EmailValidator%>"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator CssClass="field-error" ID="RequiredEmailValidator" ValidationGroup="UserInfoValidator" ControlToValidate="txtEmailAddress" Display="Dynamic" runat="server" ErrorMessage="<%$ Resources: EP, ep_lbl_Required%>"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <asp:HyperLink Target="_blank" ID="printHyperLink" runat="server" NavigateUrl="/" Text=""></asp:HyperLink>
                    </div>
                    <div class="col-sm-2">
                        <asp:Button class="btn btn-action btn-lg " ID="btnSubmit" runat="server" Text="SUBMIT" 
                            OnClientClick="UserInfo.onSubmitClick(this); " OnClick="btnSubmit_Click" />
                        <%--<button class="btn btn-action btn-lg" id="submbut" type="button" ">
                            <span>SUBMIT&nbsp;</span><span class="fa fa-caret-right"></span>
                        </button>--%>
                    </div>
                </div>
                <div class="form-group">
                    <div id="dialog-confirms" title="" style=" font-size: 18px;">
                        <p>
                            <asp:Label runat="server" ID="txtMessage1" CssClass="txtMessage1" style="color: #00CC66"></asp:Label>
                        </p>
                        <p>
                            <asp:Label runat="server" ID="txtMessage2" CssClass="txtMessage2"></asp:Label>
                        </p>
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

    <script src="/Scripts/ControlsJs/UserInfo.js?v=33"></script>


<%--
<script src="/Scripts/ControlsJs/SponJobs/ucSponJobUser.js?v=33"></script>--%>


</asp:Content>
