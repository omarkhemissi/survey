using System.Globalization;
using System.Threading;

namespace REPORT.Frontend
{
    public static class CultureUtilities
    {

        public static void SetCurrentCulture()
        {
            if (SessionManager.UserLanguage == null)
            {
                SessionManager.UserLanguage = GetCurrentCulture();
            }
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(SessionManager.UserLanguage);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(SessionManager.UserLanguage);
        }

        public static string GetCurrentCulture()
        {
            string UserLanguage = "";
            if (SessionManager.UserLanguage != "")
                UserLanguage = SessionManager.UserLanguage;
            else
                UserLanguage = GetDefaultCulture();

            return UserLanguage;
        }

        public static string GetDefaultCulture()
        {
            return System.Configuration.ConfigurationManager.AppSettings["DefaultLanguage"];

        }
    }
}