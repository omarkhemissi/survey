<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="REPORT.Frontend.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="col-sm-12">
        <div class="sponJobsQuerys panel panel-primary sky-form ServicesForm boxed form-horizontal" id="SponJobsQuerys">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-sm-6">
                        <h3 class="panel-title" style="display: inline;">
                            <asp:Literal runat="server" Text=""></asp:Literal></h3>
                    </div>
                </div>
            </div>

            <div class="panel-body " id="SponJobsQuerysContent">
                <div class="form-group">
                    <div class="col-sm-8">
                        <asp:Label ID="txtmessage" CssClass="control-label txtmessage " runat="server"
                                            Text="“Career Finder.”" style="font-size: large; font-weight: 700">
                        </asp:Label>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-8">
                        <asp:Label CssClass="control-label txtmessage " runat="server"
                                            Text="Life is full with positions find out which fit you the most.">
                        </asp:Label>

                    </div>
                </div>

                <div class="form-group"></div>

                <div class="form-group">
                    <div class="col-sm-8">
                        <asp:Label CssClass="control-label txtmessage " runat="server"
                                            Text="What these questions are trying to find about you watch this video.">
                        </asp:Label>

                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-5">
                        
                        <%--<div class="embed-responsive embed-responsive-16by9">
                          <iframe class="embed-responsive-item" src="/Video/MBTI.mp4" allowfullscreen></iframe>
                        </div>--%>

                        <%--<div align="center" class="embed-responsive embed-responsive-16by9">
                            <video autoplay loop class="embed-responsive-item">
                                <source src="http://techslides.com/demos/sample-videos/small.mp4" type="video/mp4">
                            </video>
                        </div>--%>

                        <%--<!-- 21:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-21by9">
                          <iframe class="embed-responsive-item" src="..."></iframe>
                        </div>

                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                          <iframe class="embed-responsive-item" src="..."></iframe>
                        </div>

                        <!-- 4:3 aspect ratio -->
                        <div class="embed-responsive embed-responsive-4by3">
                          <iframe class="embed-responsive-item" src="..."></iframe>
                        </div>

                        <!-- 1:1 aspect ratio -->
                        <div class="embed-responsive embed-responsive-1by1">
                          <iframe class="embed-responsive-item" src="..."></iframe>
                        </div>--%>

                    </div>
                    <div class="col-sm-1"> </div>
                    <div class="col-sm-2">
                        <asp:Button class="btn btn-action btn-lg " ID="btnTakeFreeTest" runat="server" Text="Take a free TEST" 
                             OnClick="btnTakeFreeTest_Click" />
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

<%--
<script src="/Scripts/ControlsJs/SponJobs/ucSponJobUser.js?v=33"></script>--%>


</asp:Content>
