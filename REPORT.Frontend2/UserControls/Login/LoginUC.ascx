<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginUC.ascx.cs" Inherits="REPORT.Frontend.LoginUC" %>


<script src='https://www.google.com/recaptcha/api.js' async defer></script>
<script>
var btnLoginEvent = null;

function DoLogin() {
   var btn = document.getElementById("<%:btnLogIn.ClientID%>");
   btn.onclick = btnLoginEvent;
   btn.click();
}

function DoValidate(event) {
   event.preventDefault();
   if (Page_ClientValidate()) {
      grecaptcha.execute();
   }
}

function DoLoad() {
   var btn = document.getElementById("<%:btnLogIn.ClientID%>");
   btnLoginEvent = btn.onclick;
   btn.onclick = DoValidate;
}

</script>

    <%--<div class="panel panel-primary sky-form ServicesForm boxed form-horizontal">--%>
    <%--    
    <div class="panel-heading active">
        <h3 class="panel-title">
            <asp:Literal ID="Literal1" runat="server" meta:resourcekey="LoginHeaderResource1"></asp:Literal></h3>
        <a href="#" class="arrowServ" title=""></a>
    </div>--%>
    <div class="panel-body">
        <asp:Panel ID="pnlLoginInput" runat="server" meta:resourcekey="pnlLoginInputResource1">
            <div class="form-group">
                <span class="required-field col-sm-3 control-label ">
                    <asp:Label runat="server" ID="lblQID" CssClass="Lbl" Text="<%$ Resources: EP, ep_lbl_Login %>"
                        AssociatedControlID="txtQID" meta:resourcekey="lblQIDResource1"></asp:Label>
                </span>
                <div class="col-sm-9">
                    <div class="col-sm-6">
                        <asp:TextBox runat="server" ID="txtQID" CssClass="form-control  fixedstate-field" MaxLength="50" meta:resourcekey="txtPinResource1"></asp:TextBox>
                    </div>
                    <div class="error-msg">
                        <asp:RequiredFieldValidator runat="server" ID="reqQID" Display="Dynamic" ErrorMessage="<%$ Resources: EP, ep_lbl_Required %>"
                            ControlToValidate="txtQID" ValidationGroup="SignIn" CssClass="validation" SetFocusOnError="True" meta:resourcekey="reqQIDResource1"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <span class="required-field col-sm-3 control-label">

                    <asp:Label runat="server" ID="lblPhone" Text="<%$ Resources: EP, ep_lbl_Password %>" CssClass="Lbl" AssociatedControlID="txtPassword" meta:resourcekey="lblPhoneResource1"></asp:Label>
                </span>
                <div class="col-sm-9">
                    <div class="col-sm-6">
                        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control" MaxLength="50" meta:resourcekey="txtPinResource1"></asp:TextBox>
                    </div>
                    <div class="error-msg">
                        <asp:RequiredFieldValidator runat="server" ID="reqMobileNumber" Display="Dynamic" ErrorMessage="<%$ Resources: EP, ep_lbl_Required %>"
                            ControlToValidate="txtPassword" ValidationGroup="SignIn" CssClass="validation" SetFocusOnError="True" meta:resourcekey="reqMobileNumberResource1"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
				    <div class="g-recaptcha"
					    data-sitekey="<%:CaptchaSiteKey%>"
					    data-callback="DoLogin"
					    data-size="invisible">
				    </div>
                    <%--<asp:Button ID="btnLogIn" runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />--%>
                </div>
            </div>
            <div class="form-group">
                <span class="empty-field col-sm-3 control-label"></span>
                <div class="col-sm-9">
                    <div class="col-md-6">
                        <asp:Button ID="btnLogIn" runat="server" CssClass="col-md-3 btn btn-default" Text="<%$ Resources: EP, ep_lbl_SignInText %>"
                            OnClientClick="javascript:disableButton(this.id);" OnClick="Login_Click" ValidationGroup="SignIn" meta:resourcekey="btnSubmitResource1" />
                    </div>
                    <div class="error-msg">
                        <asp:Label ID="lblFailedSignIn" runat="server" CssClass="validation"
                            Text="" meta:resourcekey="lblFailedSignInResource1"></asp:Label>
                    </div>
                </div>
            </div>
        </asp:Panel>
        
    </div>

<%--</div>--%>


<script type="text/javascript">

        DoLoad();

    function disableButton(btnId) {
        var btn = document.getElementById(btnId);
        btn.enabled = false;
    }

</script>
