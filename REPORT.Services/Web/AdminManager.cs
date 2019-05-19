using System.Collections.Generic;
using REPORT.BO;
using System;
using System.IO;

namespace REPORT.Services
{
    public class AdminManager : IAdminManager
    {
        LogManager logManager = new LogManager();
        
        private string mainFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\Survey.cfg";
        private string bkpFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\Survey.cfg.bkp";
        private bool InsertFile(StreamWriter sw, Question question)
        {
            sw.WriteLine(question.Number + "#" + question.Set + "#" +
                question.Group + "#" + question.ContentEn + "#" + question.ContentAr);

            return true;
        }
        private string getGroupDesc(long group)
        {
            switch (group)
            {
                case 1:
                    return SessionManager.UserLanguage == "ar-QA" ? "" : "Realistic (R)";
                case 2:
                    return SessionManager.UserLanguage == "ar-QA" ? "" : "Investigative (I)";
                case 3:
                    return SessionManager.UserLanguage == "ar-QA" ? "" : "Artistic (A)";
                case 4:
                    return SessionManager.UserLanguage == "ar-QA" ? "" : "Social (S)";
                case 5:
                    return SessionManager.UserLanguage == "ar-QA" ? "" : "Enterprising (E)";
                case 6:
                    return SessionManager.UserLanguage == "ar-QA" ? "" : "Conventional (C)";
                
                default:
                    return "";
            }
        }
        public List<Question> GetQuestionList()
        {
            List<Question> lst = new List<Question>();
            StreamReader sr = new StreamReader(mainFile);
            while (!sr.EndOfStream)
            {
                string line = sr.ReadLine();
                string[] fields = line.Split('#');
                if (fields.Length == 5)
                {
                    lst.Add(new Question()
                    {
                        Number = Int64.Parse(fields[0]),
                        Set = Int64.Parse(fields[1]),
                        Group = Int64.Parse(fields[2]),
                        GroupDesc = getGroupDesc(Int64.Parse(fields[2])),
                        ContentEn = fields[3],
                        ContentAr = fields[4],
                    });
                }
            }
            sr.Close();
            SessionManager.QuestResult = lst;

            return lst;
        }


        public List<Question> GetSurvey()
        {
            return GetQuestionList();
        }
        public List<Question> DeleteSurvey(Query query)
        {
            if (query != null)
            {
                int iCounter = 0;
                StreamWriter sw = new StreamWriter(bkpFile, false);
                foreach (Question ques in SessionManager.QuestResult)
                {
                    if (query.Number != ques.Number)
                    {
                        ques.Number = ++iCounter;
                        InsertFile(sw, ques);
                    }
                }
                sw.Close();
                File.Replace(bkpFile, mainFile, mainFile + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm_ss")+"_D");
                SessionManager.QuestResult = GetQuestionList();

            }
            return SessionManager.QuestResult;
        }
        public List<Question> SaveSurvey(Query query)
        {
            if (query != null)
            {
                int iCounter = 0;
                StreamWriter sw = new StreamWriter(bkpFile, false);
                foreach (Question ques in SessionManager.QuestResult)
                {
                    if ((query.CrudAction == "U") && (query.Number == ques.Number))
                    {
                        InsertFile(sw, new Question()
                        {
                            Number = ++iCounter,
                            Set = query.Set,
                            Group = query.Group,
                            ContentAr = query.ContentAr,
                            ContentEn = query.ContentEn
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
                    InsertFile(sw, new Question()
                    {
                        Number = ++iCounter,
                        Set = query.Set,
                        Group = query.Group,
                        ContentAr = query.ContentAr,
                        ContentEn = query.ContentEn
                    });
                }
                sw.Close();
                File.Replace(bkpFile, mainFile, mainFile + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm_ss") + "_"+query.CrudAction);
                SessionManager.QuestResult = GetQuestionList();
            }

            return SessionManager.QuestResult;
        }


        private string reportFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\Report.cfg";
        private string bkpReportFile = AppDomain.CurrentDomain.BaseDirectory + "\\Report\\Conf\\Report.cfg.bkp";
        private bool InsertReportFile(StreamWriter sw, Report report)
        {
            sw.WriteLine(report.Number + "#" + report.Name + "#" +
                report.Email + "#" + report.BirthDay + "#" + report.Result + "#" + report.Date);

            return true;
        }
        public List<Report> GetReportList()
        {
            List<Report> lst = new List<Report>();
            StreamReader sr = new StreamReader(reportFile);
            while (!sr.EndOfStream)
            {
                string line = sr.ReadLine();
                string[] fields = line.Split('#');
                if (fields.Length == 6)
                {
                    lst.Add(new Report()
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
            SessionManager.ReportResult = lst;

            return lst;
        }


        public List<Report> GetReport()
        {
            return GetReportList();
        }
        public List<Report> DeleteReport(ReportQuery query)
        {
            if (query != null)
            {
                int iCounter = 0;
                StreamWriter sw = new StreamWriter(bkpReportFile, false);
                foreach (Report ques in SessionManager.ReportResult)
                {
                    if (query.Number != ques.Number)
                    {
                        ques.Number = ++iCounter;
                        InsertReportFile(sw, ques);
                    }
                }
                sw.Close();
                File.Replace(bkpReportFile, reportFile, reportFile + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm_ss") + "_D");
                SessionManager.ReportResult = GetReportList();

            }
            return SessionManager.ReportResult;
        }
        public List<Report> SaveReport(ReportQuery query)
        {
            if (query != null)
            {
                int iCounter = 0;
                if (SessionManager.ReportResult == null)
                {
                    GetReportList();
                }
                StreamWriter sw = new StreamWriter(bkpReportFile, false);
                foreach (Report ques in SessionManager.ReportResult)
                {
                    if ((query.CrudAction == "U") && (query.Number == ques.Number))
                    {
                        InsertReportFile(sw, new Report()
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
                    InsertReportFile(sw, new Report()
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
                SessionManager.ReportResult = GetReportList();
            }

            return SessionManager.ReportResult;
        }

    }
}