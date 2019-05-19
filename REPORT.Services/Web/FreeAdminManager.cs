using System.Collections.Generic;
using REPORT.BO;
using System;
using System.IO;

namespace REPORT.Services
{
    public class FreeAdminManager : IFreeAdminManager
    {
        LogManager logManager = new LogManager();
        
        private string mainFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\FreeSurvey.cfg";
        private string bkpFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\FreeSurvey.cfg.bkp";
        private bool InsertFile(StreamWriter sw, FreeSurvey question)
        {
            sw.WriteLine
                (
                    question.Number + "#" +
                    question.Group + "#" + 
                    question.ContentEn + "#" + 
                    question.ContentAr + "#" +
                    question.AnswerAr1 + "#" +
                    question.AnswerAr2 + "#" +
                    question.AnswerEn1 + "#" +
                    question.AnswerEn2
                );

            return true;
        }
        private string getGroupDesc(long group)
        {
            switch (group)
            {
                case 1:
                    return SessionManager.UserLanguage == "ar-QA" ? "الانجذاب" : "Affinity";
                case 2:
                    return SessionManager.UserLanguage == "ar-QA" ? "جمع المعلومات" : "Collection of information";
                case 3:
                    return SessionManager.UserLanguage == "ar-QA" ? "اتخاذ القرار" : "Make decision";
                case 4:
                    return SessionManager.UserLanguage == "ar-QA" ? "قضاء الوقت" : "Time spending";
                
                default:
                    return "";
            }
        }
        private List<FreeSurvey> GetFreeSurveyList()
        {
            List<FreeSurvey> lst = new List<FreeSurvey>();
            StreamReader sr = new StreamReader(mainFile);
            while (!sr.EndOfStream)
            {
                string line = sr.ReadLine();
                string[] fields = line.Split('#');
                if (fields.Length == 8)
                {
                    lst.Add(new FreeSurvey()
                    {
                        Number = Int64.Parse(fields[0]),
                        Group = Int64.Parse(fields[1]),
                        GroupDesc = getGroupDesc(Int64.Parse(fields[1])),
                        ContentEn = fields[2],
                        ContentAr = fields[3],
                        AnswerAr1 = fields[4],
                        AnswerAr2 = fields[5],
                        AnswerEn1 = fields[6],
                        AnswerEn2 = fields[7],
                        Value = 1
                    });
                }
            }
            sr.Close();
            SessionManager.FreeSurveyResult = lst;

            return lst;
        }


        public List<FreeSurvey> GetFreeSurvey()
        {
            return GetFreeSurveyList();
        }
        public List<FreeSurvey> DeleteFreeSurvey(Query query)
        {
            if (query != null)
            {
                int iCounter = 0;
                StreamWriter sw = new StreamWriter(bkpFile, false);
                GetFreeSurveyList();
                foreach (FreeSurvey ques in SessionManager.FreeSurveyResult)
                {
                    if (query.Number != ques.Number)
                    {
                        ques.Number = ++iCounter;
                        InsertFile(sw, ques);
                    }
                }
                sw.Close();
                File.Replace(bkpFile, mainFile, mainFile + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm_ss")+"_D");
                GetFreeSurveyList();

            }
            return SessionManager.FreeSurveyResult;
        }
        public List<FreeSurvey> SaveFreeSurvey(Query query)
        {
            if (query != null)
            {
                int iCounter = 0;
                StreamWriter sw = new StreamWriter(bkpFile, false);
                GetFreeSurveyList();
                foreach (FreeSurvey ques in SessionManager.FreeSurveyResult)
                {
                    if ((query.CrudAction == "U") && (query.Number == ques.Number))
                    {
                        InsertFile(sw, new FreeSurvey()
                        {
                            Number = ++iCounter,
                            Group = query.Group,
                            ContentAr = query.ContentAr,
                            ContentEn = query.ContentEn,
                            AnswerAr1 = query.AnswerAr1,
                            AnswerAr2 = query.AnswerAr2,
                            AnswerEn1 = query.AnswerEn1,
                            AnswerEn2 = query.AnswerEn2,
                        });
                    }
                    else
                    {
                        ques.Number = ++iCounter;
                        InsertFile(sw, ques);
                    }
                }
                if (query.CrudAction == "C")
                {
                    InsertFile(sw, new FreeSurvey()
                    {
                        Number = ++iCounter,
                        Group = query.Group,
                        ContentAr = query.ContentAr,
                        ContentEn = query.ContentEn,
                        AnswerAr1 = query.AnswerAr1,
                        AnswerAr2 = query.AnswerAr2,
                        AnswerEn1 = query.AnswerEn1,
                        AnswerEn2 = query.AnswerEn2,
                    });
                }
                sw.Close();
                File.Replace(bkpFile, mainFile, mainFile + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm_ss") + "_"+query.CrudAction);
                GetFreeSurveyList();
            }

            return SessionManager.FreeSurveyResult;
        }

        //Reporting
        private string reportFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\FreeReport.cfg";
        private string bkpReportFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\FreeReport.cfg.bkp";
        private bool InsertReportFile(StreamWriter sw, FreeReport report)
        {
            sw.WriteLine(report.Number + "#" + report.Name + "#" +
                report.Email + "#" + report.BirthDay + "#" + report.Result + "#" + report.Date);

            return true;
        }
        private List<FreeReport> GetFreeReportList()
        {
            List<FreeReport> lst = new List<FreeReport>();
            StreamReader sr = new StreamReader(reportFile);
            while (!sr.EndOfStream)
            {
                string line = sr.ReadLine();
                string[] fields = line.Split('#');
                if (fields.Length == 6)
                {
                    lst.Add(new FreeReport()
                    {
                        Number = Int64.Parse(fields[0]),
                        Name = fields[1],
                        Email = fields[2],
                        BirthDay = fields[3],
                        Result = fields[4],
                        Date = fields[5],
                    });
                }
            }
            sr.Close();
            SessionManager.FreeReportResult = lst;

            return lst;
        }

        public List<FreeReport> GetFreeReport()
        {
            return GetFreeReportList();
        }
        public List<FreeReport> DeleteFreeReport(ReportQuery query)
        {
            if (query != null)
            {
                int iCounter = 0;
                StreamWriter sw = new StreamWriter(bkpReportFile, false);
                foreach (FreeReport ques in SessionManager.FreeReportResult)
                {
                    if (query.Number != ques.Number)
                    {
                        ques.Number = ++iCounter;
                        InsertReportFile(sw, ques);
                    }
                }
                sw.Close();
                File.Replace(bkpReportFile, reportFile, reportFile + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm_ss") + "_D");
                SessionManager.FreeReportResult = GetFreeReportList();

            }
            return SessionManager.FreeReportResult;
        }
        public List<FreeReport> SaveFreeReport(ReportQuery query)
        {
            if (query != null)
            {
                int iCounter = 0;
                if (SessionManager.ReportResult == null)
                {
                    GetFreeReportList();
                }
                StreamWriter sw = new StreamWriter(bkpReportFile, false);
                foreach (FreeReport ques in SessionManager.FreeReportResult)
                {
                    if ((query.CrudAction == "U") && (query.Number == ques.Number))
                    {
                        InsertReportFile(sw, new FreeReport()
                        {
                            Number = ++iCounter,
                            Name = query.Name,
                            Email = query.Email,
                            BirthDay = query.BirthDay,
                            Result = query.Result,
                            Date = ques.Date
                        });
                    }
                    else
                    {
                        ques.Number = ++iCounter;
                        InsertReportFile(sw, ques);
                    }
                }
                if (query.CrudAction == "C")
                {
                    InsertReportFile(sw, new FreeReport()
                    {
                        Number = ++iCounter,
                        Name = query.Name,
                        Email = query.Email,
                        BirthDay = query.BirthDay,
                        Result = query.Result,
                        Date = DateTime.Now.ToString("dd-MM-yyyy")
                    });
                }
                sw.Close();
                File.Replace(bkpReportFile, reportFile, reportFile + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm_ss") + "_" + query.CrudAction);
                SessionManager.FreeReportResult = GetFreeReportList();
            }

            return SessionManager.FreeReportResult;
        }


        //Briefing E I S N T F J P
        private string briefingFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\BriefingReport.cfg";
        private string bkpBriefingFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\BriefingReport.cfg.bkp";
        private bool InsertBriefingFile(StreamWriter sw, FreeReport report)
        {
            sw.WriteLine(
                report.Number + "#" + 
                report.Name + "#" +
                report.Email + "#" + 
                report.BirthDay + "#" + 
                report.Result + "#" + 
                report.Date);

            return true;
        }
        public List<SubReportData> GetBriefingtList(string sClass)
        {
            List<SubReportData> lst = new List<SubReportData>();
            StreamReader sr = new StreamReader(briefingFile);
            while (!sr.EndOfStream)
            {
                string line = sr.ReadLine();
                if (line.Length>= (sClass.Length + 1) && line.StartsWith(sClass))
                {
                    lst.Add(new SubReportData()
                    {
                        Briefs = line.Substring(sClass.Length+1)
                    });
                }
            }
            sr.Close();
            //SessionManager.FreeReportResult = lst;

            return lst;
        }
    }
}