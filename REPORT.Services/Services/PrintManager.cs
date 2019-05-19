using System;
using System.Collections.Generic;
using Microsoft.Reporting.WebForms;
using System.IO;
using REPORT.BO;

namespace REPORT.Services
{
    

    public class PrintManager
    {
        public List<PrintingData> PrintingData()
        {
            return new List<PrintingData>();
        }        
        public List<PrintingData2> PrintingData2()
        {
            return new List<PrintingData2>();
        }

        public List<PrintingData3> PrintingData3()
        {
            return new List<PrintingData3>();
        }
        public List<SubReportData> SubReportData()
        {
            return new List<SubReportData>();
        }

        string fileName="";
        private bool CreateMeetingReport(List<PrintingData> printData)
        {
            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;
            Warning[] warnings;
            string[] streams;

            try
            {
                if (printData.Count > 0)
                {
                    // Set the processing mode for the ReportViewer to Local  
                    ReportViewer viewer = new ReportViewer();

                    viewer.ProcessingMode = ProcessingMode.Local;
                    LocalReport localReport = viewer.LocalReport;

                    localReport.ReportPath = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\InterviewLetter.rdlc";
                    localReport.DataSources.Add(new ReportDataSource("PrintingData", printData));
                    localReport.Refresh();
                    string deviceInfo = "<DeviceInfo><SimplePageHeaders>True</SimplePageHeaders></DeviceInfo>";

                    //string deviceInfo =
                    //"<DeviceInfo>" +
                    //"  <OutputFormat>PDF</OutputFormat>" +
                    //"  <PageWidth>8.5in</PageWidth>" +
                    //"  <PageHeight>11in</PageHeight>" +
                    //"  <MarginTop>0.5in</MarginTop>" +
                    //"  <MarginLeft>1in</MarginLeft>" +
                    //"  <MarginRight>1in</MarginRight>" +
                    //"  <MarginBottom>0.5in</MarginBottom>" +
                    //"</DeviceInfo>";

                    byte[] Bytes = localReport.Render(reportType, deviceInfo, out mimeType, out encoding, out fileNameExtension, out streams, out warnings);
                    //byte[] Bytes = localReport.Render(format: "PDF", deviceInfo: deviceInfo);

                    fileName = "\\Report_" + printData[0].PrintingDate.ToString("yyyy-MM-dd-HH-mm") + ".pdf";
                    //fileName = "\\Letter_2018-04-25-16-35.pdf";
                    string fullFileName = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Pdf" + fileName;
                    
                    using (FileStream stream = new FileStream(fullFileName, FileMode.Create))
                    {
                        stream.Write(Bytes, 0, Bytes.Length);
                        stream.Close();
                    }
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return false;
        }
        public string PrintResult(List<PrintingData> results)
        {
            string sResult = "link";
            
            if (CreateMeetingReport(results))
            {
                sResult = fileName;
            }

            return sResult;
        }

        private bool CreateMeetingReport2(List<PrintingData2> printData)
        {
            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;
            Warning[] warnings;
            string[] streams;

            try
            {
                if (printData.Count > 0)
                {
                    // Set the processing mode for the ReportViewer to Local  
                    ReportViewer viewer = new ReportViewer();

                    viewer.ProcessingMode = ProcessingMode.Local;
                    LocalReport localReport = viewer.LocalReport;

                    localReport.ReportPath = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\InterviewLetter6g.rdlc";
                    localReport.DataSources.Add(new ReportDataSource("PrintingData2", printData));
                    localReport.Refresh();
                    string deviceInfo = "<DeviceInfo><SimplePageHeaders>True</SimplePageHeaders></DeviceInfo>";

                    byte[] Bytes = localReport.Render(reportType, deviceInfo, out mimeType, out encoding, out fileNameExtension, out streams, out warnings);
                    //byte[] Bytes = localReport.Render(format: "PDF", deviceInfo: deviceInfo);

                    fileName = "\\Report_" + printData[0].PrintingDate.ToString("yyyy-MM-dd-HH-mm") + ".pdf";
                    //fileName = "\\Letter_2018-04-25-16-35.pdf";
                    string fullFileName = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Pdf" + fileName;

                    using (FileStream stream = new FileStream(fullFileName, FileMode.Create))
                    {
                        stream.Write(Bytes, 0, Bytes.Length);
                        stream.Close();
                    }
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return false;
        }
        public string PrintResult2(List<PrintingData2> results)
        {
            string sResult = "link";

            if (CreateMeetingReport2(results))
            {
                sResult = fileName;
            }

            return sResult;
        }
        List<SubReportData> _briefs;
        private bool CreateMeetingReport3(List<PrintingData3> printData, List<SubReportData> briefs)
        {
            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;
            Warning[] warnings;
            string[] streams;

            try
            {
                if (printData.Count > 0)
                {
                    // Set the processing mode for the ReportViewer to Local  
                    ReportViewer viewer = new ReportViewer();

                    viewer.ProcessingMode = ProcessingMode.Local;
                    LocalReport localReport = viewer.LocalReport;

                    localReport.ReportPath = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\InterviewLetterFree.rdlc";
                    localReport.DataSources.Add(new ReportDataSource("PrintingData2", printData));
                    localReport.SubreportProcessing += LocalReport_SubreportProcessing;
                    _briefs = briefs;
                    //localReport.DataSources.Add(new ReportDataSource("SubReportData", briefs));
                    localReport.EnableHyperlinks = true;
                    localReport.Refresh();
                    string deviceInfo = "<DeviceInfo><SimplePageHeaders>True</SimplePageHeaders></DeviceInfo>";

                    byte[] Bytes = localReport.Render(reportType, deviceInfo, out mimeType, out encoding, out fileNameExtension, out streams, out warnings);
                    //byte[] Bytes = localReport.Render(format: "PDF", deviceInfo: deviceInfo);

                    fileName = "\\Report_" + printData[0].SubmitDate.ToString("yyyy-MM-dd-HH-mm") + ".pdf";
                    //fileName = "\\Letter_2018-04-25-16-35.pdf";
                    string fullFileName = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Pdf" + fileName;

                    using (FileStream stream = new FileStream(fullFileName, FileMode.Create))
                    {
                        stream.Write(Bytes, 0, Bytes.Length);
                        stream.Close();
                    }
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return false;
        }

        private void LocalReport_SubreportProcessing(object sender, SubreportProcessingEventArgs e)
        {
            e.DataSources.Add(new ReportDataSource("SubReportData", _briefs));
        }

        public string PrintResult3(List<PrintingData3> results, List<SubReportData> briefs)
        {
            string sResult = "link";
            
            if (CreateMeetingReport3(results, briefs))
            {
                sResult = fileName;
            }

            return sResult;
        }
    }
}