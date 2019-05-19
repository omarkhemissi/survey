using REPORT.Controls;
using REPORT.BO;
using REPORT.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

using System.Net;
namespace REPORT.Frontend
{
    public partial class ManageFreeSurvey : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                hdnUserId.Value = SessionManager.UserItem.Name;
                BindControls();
            }
        }
        public void BindControls()
        {
            var currentCulture = CultureUtilities.GetCurrentCulture();

            if (REPORT.Controls.Strings.Cultures.arAE == currentCulture)
            {
            }
            else
            {
            }
        }
    }
}