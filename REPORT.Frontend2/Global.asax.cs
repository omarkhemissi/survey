using System;
using System.Configuration;
using System.Web;

namespace REPORT.Frontend
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
        }
        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            string LayerName = "Frontend";
            string ServerMode = ConfigurationManager.AppSettings["ServerMode"];
            if (!string.IsNullOrEmpty(ServerMode))
                LayerName = LayerName + "." + ServerMode;

            Exception ex = Server.GetLastError();
            new Services.LogManager().LogGeneralException(ex, LayerName, "App_ERROR");
            
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}