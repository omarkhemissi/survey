using REPORT.BO;
using System.Collections.Generic;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace REPORT.Services
{
    [ServiceContract]
    public interface IFreeAdminManager
    {
        [WebInvoke()]
        [OperationContract]
        List<FreeReport> GetFreeReport();

        [WebInvoke()]
        [OperationContract]
        List<FreeReport> SaveFreeReport(ReportQuery query);

        [WebInvoke()]
        [OperationContract]
        List<FreeReport> DeleteFreeReport(ReportQuery query);

        [WebInvoke()]
        [OperationContract]
        List<FreeSurvey> GetFreeSurvey();

        [WebInvoke()]
        [OperationContract]
        List<FreeSurvey> SaveFreeSurvey(Query query);

        [WebInvoke()]
        [OperationContract]
        List<FreeSurvey> DeleteFreeSurvey(Query query);
    }
}
