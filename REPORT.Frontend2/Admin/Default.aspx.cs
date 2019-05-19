using REPORT.BO;
using REPORT.Services;
using System;
using System.Collections.Generic;
using System.Security.Principal;
using System.Web.Security;

namespace REPORT.Frontend
{
    public partial class AdminDefault : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //GenericManager gm = new GenericManager();
                //var lst = gm.GetAvailableModules();
                var lst = new List<BreAvailableModule>();
                    lst.Add(new BreAvailableModule()
                    {
                        _Login = "okhemissi",
                        _UserName = "Omar KHEMISSI",
                        _ModuleNameAr = " إدارة الاستبيان",
                        _ModuleNameEn = " Manage Survey",
                        _ModuleUrl = "/Admin/ManageSurvey.aspx"
                    });
                
                    lst.Add(new BreAvailableModule()
                    {
                        _Login = "okhemissi",
                        _UserName = "Omar KHEMISSI",
                        _ModuleNameAr = " إدارة التقارير",
                        _ModuleNameEn = " Manage Report",
                        _ModuleUrl = "/Admin/ManageReport.aspx"
                    });
                rptAvailableServices.DataSource = lst;
                rptAvailableServices.DataBind();
            }
        }
    }
}