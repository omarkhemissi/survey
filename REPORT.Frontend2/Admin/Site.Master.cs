using System;
using System.Web;
using System.Web.UI.WebControls;

namespace REPORT.Frontend
{
    public partial class AdminSiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lnkSignout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            var authCookie = new HttpCookie(System.Web.Security.FormsAuthentication.FormsCookieName);
            authCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(authCookie);
            Response.Redirect("~/");
        }

        protected void lnkLang3_Click(object sender, EventArgs e)
        {
            //"en-US", "ar-QA"
            LinkButton btn = sender as LinkButton;
            HttpCookie cook = new HttpCookie("brelang");
            cook.Value = btn.CommandArgument;
            cook.Expires = DateTime.MaxValue;
            HttpContext.Current.Response.Cookies.Add(cook);
            SessionManager.UserLanguage = btn.CommandArgument;

            Response.Redirect(HttpContext.Current.Request.Url.ToString());
        }
    }
}