using REPORT.Controls;
using System.Web;
using REPORT.BO;
using System.Collections.Generic;

namespace REPORT.Frontend
{
    public static class SessionManager
    {
        public static List<BO.FreeSurvey> FreeSurveyResult
        {
            get
            {
                return (List<BO.FreeSurvey>)HttpContext.Current.Session["FreeSurveyResult"];
            }
            set { HttpContext.Current.Session["FreeSurveyResult"] = value; }
        }
        public static QuizTest QuizResult
        {
            get
            {
                return (QuizTest)HttpContext.Current.Session["QuizResult"];
            }
            set { HttpContext.Current.Session["QuizResult"] = value; }
        }

        public static string UserLanguage
        {
            get
            {
                var userLanguage = HttpContext.Current.Session["UserLanguage"];
                if (userLanguage == null)
                {
                    HttpContext.Current.Session["UserLanguage"] = System.Configuration.ConfigurationManager.AppSettings["DefaultLanguage"];
                    userLanguage = HttpContext.Current.Session["UserLanguage"];
                }
                return userLanguage.ToString();

            }
            set { HttpContext.Current.Session.Add("UserLanguage", value); }
        }

        public static UserItem UserItem
        {
            get {
                if (HttpContext.Current.Session["UserItem"] == null)
                {
                    return null;
                }
                else
                {
                    return (UserItem)HttpContext.Current.Session["UserItem"];
                }
            }
            set { HttpContext.Current.Session.Add("UserItem", value); }
        }

        public static string UserToken
        {
            get { return HttpContext.Current.Session["UserToken"] == null ? "123" : HttpContext.Current.Session["UserToken"].ToString(); }
            set { HttpContext.Current.Session.Add("UserToken", value); }
        }

        public static StringAesEncryptionManager EncryptionManager
        {
            get { return HttpContext.Current.Session["EncryptionManager"] == null ? new StringAesEncryptionManager() : (StringAesEncryptionManager)HttpContext.Current.Session["EncryptionManager"]; }
            set { HttpContext.Current.Session.Add("EncryptionManager", value); }
        }
    }
}