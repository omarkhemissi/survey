<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="REPORT.Frontend.Login" %>

<%@ Register Src="~/UserControls/Login/LoginUC.ascx" TagPrefix="uc1" TagName="LoginUC" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-primary sky-form ServicesForm boxed form-horizontal">
        <div class="panel-heading active">
            <h3 class="panel-title">
                <asp:Literal runat="server" Text="<%$ Resources: EP, ep_lbl_Title_Login %>"></asp:Literal></h3>
            <a href="#" class="arrowServ" title=""></a>
        </div>

        <uc1:LoginUC runat="server" id="LoginUC1" />

    </div>
</asp:Content>