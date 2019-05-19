using System.Collections.Generic;
using REPORT.BO;
using System.ServiceModel.Activation;

namespace REPORT.Services
{

    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class EPWebService : IEPWebService
    {
        FreeAdminManager freeAdminManager;
        FreeSurveyManager freeSurveyManager;
        SurveyManager surveyManager;
        AdminManager adminManager;
        public EPWebService()
        {
            freeAdminManager = new FreeAdminManager();
            freeSurveyManager = new FreeSurveyManager();
            surveyManager = new SurveyManager();
            adminManager = new AdminManager();
        }

        #region FreeSurvey Admin Report
        public List<FreeReport> GetFreeReport()
        {
            return freeAdminManager.GetFreeReport();
        }
        public List<FreeReport> DeleteFreeReport(ReportQuery query)
        {
            return freeAdminManager.DeleteFreeReport(query);
        }
        public List<FreeReport> SaveFreeReport(ReportQuery query)
        {
            return freeAdminManager.SaveFreeReport(query);
        }
        public List<FreeSurvey> GetFreeSurvey()
        {
            return freeAdminManager.GetFreeSurvey();
        }
        public List<FreeSurvey> DeleteFreeSurvey(Query query)
        {
            return freeAdminManager.DeleteFreeSurvey(query);
        }
        public List<FreeSurvey> SaveFreeSurvey(Query query)
        {
            return freeAdminManager.SaveFreeSurvey(query);
        }
        #endregion

        #region FreeSurvey
        
        public List<FreeSurvey> SelectAnswer(QuestionQuery query)
        {
            return freeSurveyManager.SelectAnswer(query);
        }
        public FreeSurvey SubmitSurvey()
        {
            return freeSurveyManager.SubmitSurvey();
        }
        #endregion

        #region Survey Admin Report
        public List<Report> GetReport()
        {
            return adminManager.GetReport();
        }
        public List<Report> DeleteReport(ReportQuery query)
        {
            return adminManager.DeleteReport(query);
        }
        public List<Report> SaveReport(ReportQuery query)
        {
            return adminManager.SaveReport(query);
        }
        public List<Question> GetSurvey()
        {
            return adminManager.GetSurvey();
        }
        public List<Question> DeleteSurvey(Query query)
        {
            return adminManager.DeleteSurvey(query);
        }
        public List<Question> SaveSurvey(Query query)
        {
            return adminManager.SaveSurvey(query);
        }
        #endregion

        #region Survey
        public SelectQuestResult SelectQuest(QuestionQuery query)
        {
            return surveyManager.SelectQuest(query);
        }
        public NextResult GoNextSet(QuestionQuery query)
        {
            return surveyManager.GoNextSet(query);
        }
        public FinalResult GoFinalResult(QuestionQuery query)
        {
            return surveyManager.GoFinalResult(query);
        }
        #endregion

    }
}