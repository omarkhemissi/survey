using REPORT.BO;
using System.Collections.Generic;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace REPORT.Services
{
    [ServiceContract]
    public interface IAdminManager
    {
        [WebInvoke()]
        [OperationContract]
        List<Report> GetReport();

        [WebInvoke()]
        [OperationContract]
        List<Report> SaveReport(ReportQuery query);

        [WebInvoke()]
        [OperationContract]
        List<Report> DeleteReport(ReportQuery query);

        [WebInvoke()]
        [OperationContract]
        List<Question> GetSurvey();

        [WebInvoke()]
        [OperationContract]
        List<Question> SaveSurvey(Query query);

        [WebInvoke()]
        [OperationContract]
        List<Question> DeleteSurvey(Query query);
    }
}
