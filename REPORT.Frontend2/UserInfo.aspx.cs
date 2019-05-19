using REPORT.BO;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;

namespace REPORT.Frontend
{
    public partial class UserInfo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionManager.FreeSurveyResult == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                foreach (var item in SessionManager.FreeSurveyResult)
                {
                    if (item.Value == 0)
                    {
                        Response.Redirect("~/Default.aspx");
                    }
                }
            }
            if (!IsPostBack)
            {
                txtEmailAddress.Text = "khemissi@gmail.com";
                txtName.Text = "test";
                dpDateMin.Text = "28/1/1987";
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (SessionManager.QuizResult == null)
            {
                return;
            }
            EMailValidator.Validate();
            RequiredEmailValidator.Validate();
            RequireddpDateMin.Validate();
            RequiredtxtName.Validate();
            if (EMailValidator.IsValid &&
                RequiredEmailValidator.IsValid &&
                RequireddpDateMin.IsValid &&
                RequiredtxtName.IsValid)
            {
                new Services.AdminManager().SaveReport(new BO.ReportQuery()
                {
                    CrudAction="C",
                    Name = txtName.Text,
                    Email = txtEmailAddress.Text,
                    BirthDay = dpDateMin.Text,
                    Result = SessionManager.QuizResult.PrintingData3.Result
                });
                                
                SessionManager.QuizResult.PrintingData3.Name = txtName.Text;

                List<PrintingData3> results = new List<PrintingData3>();
                results.Add(SessionManager.QuizResult.PrintingData3);
                string FilePath = new Services.PrintManager().PrintResult3(results, SessionManager.QuizResult.briefs);
                SessionManager.QuizResult.FilePath = FilePath;

                //
                Mailing mail = new Mailing(txtEmailAddress.Text);
                List<string>[] list = new List<string>[2];
                list[0] = new List<string>() { "Name", "Birth Day", "Result" };
                list[1] = new List<string>() { txtName.Text, dpDateMin.Text, SessionManager.QuizResult.PrintingData3.Result };
                string fileName = HttpContext.Current.Server.MapPath("~/Report/Pdf/") + SessionManager.QuizResult.FilePath;
                //
                txtMessage1.Text = mail.SendQuiz("test result ", fileName, list);
                printHyperLink.Text = "Download Result";
                printHyperLink.NavigateUrl = "/ReportHandler.ashx?fileName=" + SessionManager.QuizResult.FilePath;
                //
                SessionManager.FreeSurveyResult = null;
                txtName.Enabled = false;
                dpDateMin.Enabled = false;
                txtEmailAddress.Enabled = false;
                btnSubmit.Enabled = false;
            }
        }
    }
}