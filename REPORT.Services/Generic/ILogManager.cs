using System;
using System.Data.Common;
using System.IO;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace REPORT.Services
{
    [ServiceContract]
    public interface ILogManager
    {
        [WebInvoke()]
        [OperationContract]
        void LogGeneralException(Exception ex, string layerName, string extraInfo);

        [WebInvoke()]
        [OperationContract]
        void LogIOException(IOException ex, string layerName, string extraInfo);

        [WebInvoke()]
        [OperationContract]
        void LogDBException(DbException ex, string layerName, string extraInfo);
    }
}
