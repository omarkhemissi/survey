<%@ Page Title="Services Available" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="REPORT.Frontend.AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <div class="row">
            <asp:Repeater ID="rptAvailableServices" runat="server">
                <ItemTemplate>
                    <div class="col-sm-3 available-service-container">
                        <a runat="server" class="menu-link" href='<%# Eval("_ModuleUrl")%>'>
                            <div class="featured-box noborder">
                                <!-- add .transparent for no background color -->
                                <i class="fa fa-user red-background"></i>
                                <h4><%# REPORT.Frontend.SessionManager.UserLanguage == "ar-QA"? Eval("_ModuleNameAr") :Eval("_ModuleNameEn") %></h4>
                                <p><%# REPORT.Frontend.SessionManager.UserLanguage == "ar-QA"? Eval("_ModuleNameAr") :Eval("_ModuleNameEn") %></p>
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="clearfix" style="height: 30px;"></div>
</asp:Content>
