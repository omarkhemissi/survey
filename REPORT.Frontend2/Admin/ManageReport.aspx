<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="ManageReport.aspx.cs" Inherits="REPORT.Frontend.ManageReport" %>

<%--<%@ Register Src="~/UserControls/ucReport.ascx" TagPrefix="uc1" TagName="ucReport" %>--%>
<%@ Register Src="~/UserControls/ucManageFreeReport.ascx" TagPrefix="uc1" TagName="ucReport" %>

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
    <input type="hidden" runat="server" id="hdnGenericError" class="hdnGenericError" value="<%$ Resources: EP, ep_lbl_GenericError %>" />
    <%--Localization Related End--%>

    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <uc1:ucReport runat="server" ID="ucReport" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
