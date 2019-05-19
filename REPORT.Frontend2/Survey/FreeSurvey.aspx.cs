using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;

namespace REPORT.Frontend
{
    public partial class FreeSurvey : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (SessionManager.FreeSurveyResult != null)
                {
                    bool bSurveyOk = false;
                    foreach (var item in SessionManager.FreeSurveyResult)
                    {
                        if (item.Value == 0)
                        {
                            bSurveyOk = true;
                        }
                    }
                    if (!bSurveyOk)
                    {
                        Response.Redirect("~/UserInfo.aspx");
                    }
                }
            }
        }
    }
}