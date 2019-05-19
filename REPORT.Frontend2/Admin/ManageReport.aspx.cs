using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;

namespace REPORT.Frontend
{
    public partial class ManageReport : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionManager.QuizResult == null)
            {
                //Response.Redirect("~/Default.aspx");
            }
            if (!IsPostBack)
            {
                //ucSponJobsResult.BindControls();
            }
        }

    }
}