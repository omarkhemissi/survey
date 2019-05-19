using System;
using System.Web.UI;

namespace REPORT.Frontend
{
    public class BasePage : Page
    {
        public const string LanguageDropDownID = "ctl00$ddlLanguage";
        public const string PostBackEventTarget = "__EVENTTARGET";
        protected override void InitializeCulture()
        {
            if (Request[PostBackEventTarget] != null && Request[PostBackEventTarget].Equals(LanguageDropDownID))
                SessionManager.UserLanguage = Request.Form[Request[PostBackEventTarget]].ToString();
            
            CultureUtilities.SetCurrentCulture();

            base.InitializeCulture();
        }

        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);
        }

        protected override void OnPreLoad(EventArgs e)
        {
            //!!!
            //Page.Title = System.Web.SiteMap.CurrentNode.Title;
            base.OnPreLoad(e);
        }
    }
}