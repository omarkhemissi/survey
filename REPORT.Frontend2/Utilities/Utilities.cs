
using REPORT.Controls;
using REPORT.Services;
using System;
using System.Configuration;
using System.IO;

namespace REPORT.Frontend
{
    public class Utilities
    {
        static LogManager logManager = new LogManager();

        public static bool UploadFile(string fileUploadContext, string fileName, string fileType, Stream stream)
        {
            // Format of "fileUploadContext": EstablishmentCode-MdRequestId-MdAttachmentId
            bool result = true;

            if (string.IsNullOrEmpty(fileUploadContext))
                return false;

            var strPathArray = fileUploadContext.Split(new char[] { '-' });
            var strAbsoluteBasePath = ConfigurationManager.AppSettings["BaseFileuploadPath"]; //Test
            try
            {
                using (new Impersonate(ConfigurationManager.AppSettings["FileuploadUser"], ConfigurationManager.AppSettings["FileuploadServer"], ConfigurationManager.AppSettings["FileuploadPass"]))
                {
                    if (!Directory.Exists(strAbsoluteBasePath + strPathArray[0])) // No folder found for this establishment
                    {
                        Directory.CreateDirectory(strAbsoluteBasePath + strPathArray[0] + "\\" + strPathArray[1] + "\\" + strPathArray[2]);
                    }

                    if (!Directory.Exists(strAbsoluteBasePath + strPathArray[0] + "\\" + strPathArray[1])) // No folder found for this MD Request ID inside the establishment folder
                    {
                        Directory.CreateDirectory(strAbsoluteBasePath + strPathArray[0] + "\\" + strPathArray[1]);
                    }

                    if (!Directory.Exists(strAbsoluteBasePath + strPathArray[0] + "\\" + strPathArray[1] + "\\" + strPathArray[2])) // No folder found for this MD Attachment ID inside the request folder
                    {
                        Directory.CreateDirectory(strAbsoluteBasePath + strPathArray[0] + "\\" + strPathArray[1] + "\\" + strPathArray[2]);
                    }

                    using (var fileStream = new FileStream(strAbsoluteBasePath + strPathArray[0] + "\\" + strPathArray[1] + "\\" + strPathArray[2] + "\\" + fileName, FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.None))
                    {
                        stream.CopyTo(fileStream);
                        fileStream.Close();
                    }
                }
            }
            catch (IOException ex)
            {
                logManager.LogIOException(ex, "Frontend.Utilities", "UploadFile");
                result = false;
            }
            catch (Exception ex)
            {
                logManager.LogGeneralException(ex, "Frontend.Utilities", "UploadFile");
                result = false;
            }

            return result;
        }

        public static bool DeleteFile(string fileUploadContext, string fileName)
        {
            // Format of "fileUploadContext": EstablishmentCode-MdRequestId-MdAttachmentId
            bool result = true;
            if (string.IsNullOrEmpty(fileUploadContext))
                return false;

            var strPathArray = fileUploadContext.Split(new char[] { '-' });
            var strAbsoluteBasePath = ConfigurationManager.AppSettings["BaseFileuploadPath"]; //Test
            try
            {
                using (new Impersonate(ConfigurationManager.AppSettings["FileuploadUser"], ConfigurationManager.AppSettings["FileuploadServer"], ConfigurationManager.AppSettings["FileuploadPass"]))
                {
                    if (File.Exists(strAbsoluteBasePath + strPathArray[0] + "\\" + strPathArray[1] + "\\" + strPathArray[2] + "\\" + fileName))
                    {
                        File.Delete(strAbsoluteBasePath + strPathArray[0] + "\\" + strPathArray[1] + "\\" + strPathArray[2] + "\\" + fileName);
                    }
                }
            }
            catch (IOException ex)
            {
                logManager.LogIOException(ex, "Frontend.Utilities", "DeleteFile");
                result = false;
            }
            catch (Exception ex)
            {
                logManager.LogGeneralException(ex, "Frontend.Utilities", "DeleteFile");
                result = false;
            }

            return result;
        }
    }
}