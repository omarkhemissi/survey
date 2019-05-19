using REPORT.BO;
using System.Collections.Generic;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace REPORT.Services
{
    [ServiceContract]
    public interface IFreeSurveyManager
    {
        [WebInvoke]
        [OperationContract]
        List<FreeSurvey> SelectAnswer(QuestionQuery query);

        [WebInvoke]
        [OperationContract]
        FreeSurvey SubmitSurvey();
    }
}
