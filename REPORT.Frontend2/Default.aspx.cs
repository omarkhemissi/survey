using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;

namespace REPORT.Frontend
{
    public partial class Default : Page
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

        protected void btnTakeFreeTest_Click(object sender, EventArgs e)
        {
            SessionManager.FreeSurveyResult = null;
            Response.Redirect("~/Survey/FreeSurvey.aspx");
        }
    }
}