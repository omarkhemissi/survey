using REPORT.Controls;
using System.Collections.Generic;
using System.Web;
using REPORT.BO;

namespace REPORT.Services
{
    public static class SessionManager
    {
        public static List<FreeSurvey> FreeSurveyResult
        {
            get
            {
                return (List<FreeSurvey>)HttpContext.Current.Session["FreeSurveyResult"];
            }
            set { HttpContext.Current.Session["FreeSurveyResult"] = value; }
        }
        public static List<FreeReport> FreeReportResult
        {
            get
            {
                return (List<FreeReport>)HttpContext.Current.Session["FreeReportResult"];
            }
            set { HttpContext.Current.Session["FreeReportResult"] = value; }
        }
        /// <summary>
        /// ///////////////////////////////////////////////////////////////////////////////
        /// </summary>
        public static QuizTest QuizResult
        {
            get
            {
                return (QuizTest)HttpContext.Current.Session["QuizResult"];
            }
            set { HttpContext.Current.Session["QuizResult"] = value; }
        }

        public static List<Report> ReportResult
        {
            get
            {
                return (List<Report>)HttpContext.Current.Session["ReportResult"];
            }
            set { HttpContext.Current.Session["ReportResult"] = value; }
        }
        public static List<Question> QuestResult
        {
            get
            {
                return (List<Question>)HttpContext.Current.Session["QuestResult"];
            }
            set { HttpContext.Current.Session["QuestResult"] = value; }
        }

        public static User Features
        {
            get
            {
                return (User)HttpContext.Current.Session["Features"];
            }
            set { HttpContext.Current.Session["Features"] = value; }
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
            set { HttpContext.Current.Session["UserLanguage"] = value; }
        }

        public static UserItem UserItem
        {
            get {
                if (HttpContext.Current.Session["UserItem"] == null)
                {
                    return (UserItem)HttpContext.Current.Session["UserItem"];
                }
                else
                {
                    return (UserItem)HttpContext.Current.Session["UserItem"];
                }
            }
            set { HttpContext.Current.Session["UserItem"] = value; }
        }

        public static string UserToken
        {
            get { return HttpContext.Current.Session["UserToken"] == null ? "123" : HttpContext.Current.Session["UserToken"].ToString(); }
            set { HttpContext.Current.Session["UserToken"] = value; }
        }

        public static StringAesEncryptionManager EncryptionManager
        {
            get { return HttpContext.Current.Session["EncryptionManager"] == null ? new StringAesEncryptionManager() : (StringAesEncryptionManager)HttpContext.Current.Session["EncryptionManager"]; }
            set { HttpContext.Current.Session["EncryptionManager"] = value; }
        }
    }
}