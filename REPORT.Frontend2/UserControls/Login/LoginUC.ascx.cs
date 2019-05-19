using REPORT.BO;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;

namespace REPORT.Frontend
{
    public partial class LoginUC : System.Web.UI.UserControl
    {

        public string CaptchaSiteKey
        {
            get
            {
                return System.Configuration.ConfigurationManager.AppSettings["CaptchaSiteKey"];
            }
        }

        public string CaptchaSecret
        {
            get
            {
                return System.Configuration.ConfigurationManager.AppSettings["CaptchaSecret"];
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            if (Session["Candidate"] == null)
            {
                Candidate loggedQID = Session["Candidate"] as Candidate;
                if (loggedQID != null && loggedQID.MobileVerified && Page.User.Identity.IsAuthenticated)
                {
                    RedirectAfterSuccessfulLogin(loggedQID);
                }
            }
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            string txtQid = txtQID.Text.Trim();
            if (!ReCaptcha.Validate(CaptchaSecret, Request.Form["g-recaptcha-response"]))
            {
                lblFailedSignIn.Text = "كلمة التحقق غير صحيحة";
            }
            else if (Page.IsValid)
            {
                ValidateUser(txtQid);
            }
        }
        
        private bool ValidateUser(string txtqid)
        {
            bool isValid = false;

            string sError = Resources.EP.ep_lbl_GenericError;
            
                    bool valid = false;
                    
                    valid = new Services.LoginManager().GetSingleCombinationV1(txtQID.Text, txtPassword.Text, ref sError);

                    if (!valid)
                    {
                        if (sError == "0")
                        {
                            sError = Resources.EP.ep_lbl_GenericError;
                        }
                        else if (sError == "1")
                        {
                            sError = "";
                        }
                        else if (sError == "2")
                        {
                            sError = Resources.EP.ep_lbl_LoginError;
                        }

                        lblFailedSignIn.Text = sError;
                        return false;
                    }
                    Candidate loggedQID = new Candidate();
                    loggedQID.Mobile = txtPassword.Text.Trim();
                    if ("96599659" == txtPassword.Text.Trim())
                    {
                        loggedQID.Mobile = "33426214";
                    }
                    loggedQID.QID = txtQID.Text.Trim();
                    
                    loggedQID.Retries = 0;
                    loggedQID.LoginDate = DateTime.Now;
                    
                    Session.Add("Candidate", loggedQID);
                    Candidate candidate = Session["Candidate"] as Candidate;

                    new Services.LoginManager().UpdateLogCurrentUser(candidate);
                    candidate.MobileVerified = true;
                    Session["Candidate"] = candidate;
                    SetAuthCookieMain(txtQID.Text.Trim(), string.Empty, false, FormsAuthentication.FormsCookiePath);
                    SessionManager.UserItem = 
                        new UserItem() {DisplayName= txtQID.Text.Trim() 
                        ,Name= txtQID.Text.Trim() ,NameAr= txtQID.Text.Trim(),Email= txtQID.Text.Trim()
                        };
                    RedirectAfterSuccessfulLogin(candidate);


                    isValid = true;


            return isValid;
        }
        private static FormsAuthenticationTicket CreateAuthenticationTicket(string userName, string userData, bool createPersistentCookie, string strCookiePath)
        {
            string cookiePath = strCookiePath == null ? FormsAuthentication.FormsCookiePath : strCookiePath;
            int expirationMinutes = 30;
            bool isParsed = false;
            //Determine the cookie timeout value from web.config if specified
            string LoggedInTimeOut = ConfigurationManager.AppSettings["LOGGEDINTIMEOUT"];
            if (!string.IsNullOrEmpty(LoggedInTimeOut))
                isParsed = int.TryParse(LoggedInTimeOut, out expirationMinutes);

            //Create the authentication ticket
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
            1,                      //A dummy ticket version
            userName,               //User name for whome the ticket is issued
            DateTime.Now,           //Current date and time
            DateTime.Now.AddMinutes(expirationMinutes), //Expiration date and time
            createPersistentCookie, //Whether to persist cookie on client side. If true, 
                                    //The authentication ticket will be issued for new sessions from
                                    //the same client PC    
            userData,    // userData
            strCookiePath); //Path cookie valid for

            return ticket;
        }
        private static void SetAuthCookieMain(string userName, string userData, bool createPersistentCookie, string strCookiePath)
        {

            FormsAuthenticationTicket ticket = CreateAuthenticationTicket(userName, userData, createPersistentCookie, strCookiePath);
            //Encrypt the authentication ticket
            string encrypetedTicket = FormsAuthentication.Encrypt(ticket);

            if (!FormsAuthentication.CookiesSupported)
            {
                //If the authentication ticket is specified not to use cookie, set it in the Uri
                FormsAuthentication.SetAuthCookie(encrypetedTicket, createPersistentCookie);
            }
            else
            {
                //If the authentication ticket is specified to use a cookie, wrap it within a cookie.
                //The default cookie name is .ASPXAUTH if not specified 
                //in the <forms> element in web.config
                HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encrypetedTicket);
                authCookie.Path = strCookiePath;
                ////Set the cookie's expiration time to the tickets expiration time
                //authCookie.Expires = ticket.Expiration;

                ////Set the cookie's expiration time to the tickets expiration time
                //if (ticket.IsPersistent) 
                authCookie.Expires = ticket.Expiration;

                ////Set the cookie in the Response
                HttpContext.Current.Response.Cookies.Add(authCookie);

            }
        }
        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/");
        }
        private void RedirectAfterSuccessfulLogin(Candidate loggedQID)
        {
            UserItem adu = new UserItem();
            adu.DisplayName = loggedQID.NAMEAR;
            adu.Name = (string)loggedQID.QID;
            adu.QID = (string)loggedQID.QID;
            adu.Mobile = loggedQID.Mobile;

            SessionManager.UserItem = adu;
            string redirectUrl = "/Admin/Default.aspx";
          
            Response.Redirect(redirectUrl);
        }
    }

    // ReCaptcha.cs
    public class ReCaptcha
    {
        public static bool Validate(string privateKey, string reCaptchaResponse)
        {
            var client = new System.Net.WebClient();

            var googleReply = client.DownloadString(string.Format("https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}", privateKey, reCaptchaResponse));

            var captchaResponse = JsonConvert.DeserializeObject<ReCaptcha>(googleReply);

            return (captchaResponse.Success.ToLower() == "true");
        }

        [JsonProperty("success")]
        public string Success
        {
            get { return m_Success; }
            set { m_Success = value; }
        }

        private string m_Success;
        [JsonProperty("error-codes")]
        public List<string> ErrorCodes
        {
            get { return m_ErrorCodes; }
            set { m_ErrorCodes = value; }
        }

        private List<string> m_ErrorCodes;
    }
}