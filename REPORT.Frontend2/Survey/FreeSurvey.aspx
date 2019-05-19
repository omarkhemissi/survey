<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultSite.Master" AutoEventWireup="true" CodeBehind="FreeSurvey.aspx.cs" Inherits="REPORT.Frontend.FreeSurvey" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    
    
    <%--<script src="/assets/plugins/modernizr.min.js?v=33"></script>--%>
    <script src="/assets/plugins/jquery-2.1.4.min.js?v=33"></script>
    <%--<script src="/assets/dataPicker/jquery-ui.min.js?v=33"></script>
    <script src="/assets/dataPicker/jquery.ui.datepicker-ar.js?v=33"></script>
    <script src="/assets/dataPicker/Date.js?v=33"></script>--%>
    <script src="/assets/ControlsUI.js?v=33"></script>
    <script src="/Scripts/jquery.blockUI.js?v=33"></script>

    <%--<link href="/assets/css/JqueryUI.css" rel="stylesheet" />
    <link href="/assets/plugins/owl-carousel/owl.pack.css" rel="stylesheet" />
    <link href="/assets/css/select2.min.css" rel="stylesheet" />
    <link href="/assets/css/select2-bootstrap.min.css" rel="stylesheet" />

    <script src="/assets/plugins/select2.full.min.js?v=33"></script>--%>
    <script src="/Scripts/jquery.dataTables.min.js?v=33"></script>

    <script src="/assets/json2.js?v=60"></script>
    <script src="/assets/jquery.json.min.js?v=60"></script>

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <input type="hidden" runat="server" id="hdnBack" class="hdnBack" value="<%$ Resources: EP, ep_lbl_Back %>" />
    <input type="hidden" runat="server" id="hdnEmptyList" class="hdnEmptyList" value="<%$ Resources: EP, ep_lbl_EmptyMessasge %>" />
    <input type="hidden" runat="server" id="hdnGenericError" class="hdnGenericError" value="<%$ Resources: EP, ep_lbl_GenericError %>" />
    <input type="hidden" runat="server" id="hdnNumber" class="hdnNumber" value="<%$ Resources: EP, ep_lbl_Number %>" />
    
    <div id="divucFreeSurvey" class="col-sm-12">
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
                                <%--<asp:Label ID="Label1" runat="server" Text='<%$ Resources: EP, ep_lbl_Count%>'></asp:Label>
                                :
                                <asp:Label class="lblSponJobsQueryCount" runat="server"></asp:Label>--%>
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

        <div class="form-group">
            <div class="col-sm-3">                                
                <button type="button" id="btnSubmit" class="btn btn-default" onclick="ucFreeSurvey.btnSubmitClick()">
                    <asp:Localize ID="Localize3" runat="server" Text='<%$ Resources: EP, ep_lbl_Submit%>' /></button>
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
    
</asp:Content>

<asp:Content ID="FooterContent" ContentPlaceHolderID="FootContent" runat="server">

    <script src="/Scripts/ControlsJs/ServiceCaller.js?v=01"></script>
    <script src="/Scripts/ControlsJs/ucFreeSurvey.js?v=01"></script>
    <style type="text/css">
        table.blueTable td, table.blueTable th {      
          padding: 3px 3px 3px 3px;
        }
    </style>

    <script src="/assets/plugins/jquery.isotope.js?v=33"></script>
    <script src="/assets/plugins/masonry.js?v=33"></script>
    <script src="/assets/plugins/bootstrap/js/bootstrap.min.js?v=33"></script>
    <script src="/assets/js/scripts.js?v=33"></script>
<%--
    <script>
        $.fn.datepicker.defaults.format = "dd/mm/yyyy";
        $.fn.datepicker.defaults.autoclose = true;
    </script>--%>

</asp:Content>