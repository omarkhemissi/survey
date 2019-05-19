using System;
using System.Data.Common;
using System.IO;
using Microsoft.Exchange.WebServices.Data;
using System.Net;

namespace REPORT.Services
{
    public class LogManager : ILogManager
    {
        public void LogDBException(DbException ex, string layerName, string extraInfo)
        {
           
        }

        public void LogGeneralException(Exception ex, string layerName, string extraInfo)
        {
           
        }

        public void LogIOException(IOException ex, string layerName, string extraInfo)
        {
            
        }
    }
}