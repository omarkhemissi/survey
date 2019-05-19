using REPORT.BO;
using System.Linq;
using System;
using System.Data.Common;
using System.IO;
using System.Web;

namespace REPORT.Services
{
    public class LoginManager : ILoginManager
    {
        LogManager logManager = new LogManager();

        public long LogCurrentUser(Candidate cand)
        {
            
            return 0;
        }
        public long UpdateLogCurrentUser(Candidate cand)
        {
            
            return 0;
        }
        public bool GetSingleCombinationV1(string sLogin, string sPassword, ref string Error)
        {
            bool result = false;
            try
            {
                Error = "0";
                if (sLogin.ToLower().Equals("admin") && sPassword.Equals("admin"))
                {
                    result = true;
                    Error = "1";
                }
                else
                {
                    Error = "2";
                }
                
            }
            catch (DbException ex)
            {
                var logManager = new LogManager();
                logManager.LogDBException(ex, "GenericManager", "GetSingleCombinationV1");
            }
            catch (IOException ex)
            {
                var logManager = new LogManager();
                logManager.LogIOException(ex, "GenericManager", "GetSingleCombinationV1");
            }
            catch (Exception ex)
            {
                var logManager = new LogManager();
                logManager.LogGeneralException(ex, "GenericManager", "GetSingleCombinationV1");
            }
            return result;
        }
        public bool SendSMS(string mobile, string msg)
        {
            
            return false;
        }
        
    }
}