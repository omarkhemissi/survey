using REPORT.BO;
using System.Collections.Generic;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace REPORT.Services
{
    [ServiceContract]
    public interface ISurveyManager
    {
        [WebInvoke]
        [OperationContract]
        SelectQuestResult SelectQuest(QuestionQuery query);
        [WebInvoke]
        [OperationContract]
        FinalResult GoFinalResult(QuestionQuery query);
        [WebInvoke]
        [OperationContract]
        NextResult GoNextSet(QuestionQuery query);
    }
}
