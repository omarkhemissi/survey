<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCandInfo.ascx.cs" Inherits="REPORT.Frontend.ucCandInfo" %>
<%@ Register Assembly="REPORT.Controls" Namespace="REPORT.Controls" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>


    <input type="hidden" runat="server" id="hdnUserId" class="hdnUserId" />    
    <input type="hidden" runat="server" id="hdnQID" class="hdnQID" />   
    <input type="hidden" runat="server" id="hdnCandId" class="hdnCandId" />


        <div class="form-group">

            <div class="col-sm-2">
                <label for="txtQID_SponJobsQuery" id="lblQID_SponJobsQuery" class="control-label lblQID_SponJobsQuery">
                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_QID%>" /><span class="red-astrisk itemToHide">*</span></label>
            </div>
            <div class="col-sm-4">
                <cc1:NumericTextBox ID="txtQIDSponJobsQuery" Enabled="false" CssClass="form-control txtQID_SponJobsQuery fixedstate-field" runat="server" AutoCompleteType="Disabled" autocomplete="off"></cc1:NumericTextBox>
            </div>
                    
            <div class="col-sm-2">
                <label class="control-label lblCandName">
                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_EducSpec%>" /></label>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtCanEducation" ReadOnly="true" Enabled="false" CssClass="form-control txtCanEducation" runat="server" ></asp:TextBox>
            </div>

        </div>

        <div class="form-group">

            <div class="col-sm-2">
                <label class="control-label lblCandName">
                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Name%>" /></label>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtCanName" Enabled="false" CssClass="form-control txtCanName" runat="server" ></asp:TextBox>
            </div>
            <div class="col-sm-2">
                <label class="control-label lblCandName">
                    <asp:Literal runat="server" Text="سبق له العمل" /></label>
            </div>
            <div class="col-sm-2">
                <asp:TextBox ID="txtEmploymentStatus" Enabled="false" CssClass="form-control txtEmploymentStatus" runat="server" ></asp:TextBox>
            </div>
            <div class="col-sm-2">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-2">
                <label class="control-label lblCandName">
                    <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_GenderAge%>" /></label>
            </div>
            <div class="col-sm-2">
                <asp:TextBox ID="txtCanGender" Enabled="false" CssClass="form-control txtCanGender" runat="server" ></asp:TextBox>
            </div>
            <div class="col-sm-2">
            </div>
            <div class="col-sm-4">
            </div>
        </div>
        
        <h3 class="panel-title" style="color:blue">
           <asp:Literal runat="server" Text="الرجاء التأكد من صحة البيانات الشخصية أعلاه, و في حالة وجود تحديث الرجاء عدم متابعة الترشيح و الإتصال على 40280222 أو مراجعة إدارة تنمية الموارد البشرية الوطنية بوزارة التنمية الادارية والعمل والشؤون الاجتماعية."></asp:Literal></h3>
                
    


<script src="/Scripts/ControlsJs/SponJobs/ucSponJobUser.js?v=33"></script>
