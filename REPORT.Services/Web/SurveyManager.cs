using System.Collections.Generic;
using REPORT.BO;
using System;
using System.IO;

namespace REPORT.Services
{
    public class SurveyManager : ISurveyManager
    {
        LogManager logManager = new LogManager();

        public SelectQuestResult SelectQuest(QuestionQuery query)
        {
            SelectQuestResult lstResults = new SelectQuestResult();
            lstResults.Status = "W";
            try
            {
                lstResults.Required = new List<long>();
                lstResults.Selected = new List<long>();
                List<Question> lst = SessionManager.QuestResult;
                foreach (Question quest in lst)
                {
                    if (quest.Number == query.question)
                    {
                        quest.Value = query.value;
                        lstResults.Status = "S";
                    }
                    if (quest.Set == query.currentSet)
                    {
                        if (quest.Value == null)
                        {
                            lstResults.Required.Add(quest.Number);
                        }
                        else
                        {
                            lstResults.Selected.Add(quest.Number);
                        }
                    }
                }
            }
            catch (IOException ex)
            {
                //lstResults.Status = "R";
                lstResults.Message = ex.Message;

                var logManager = new LogManager();
                logManager.LogIOException(ex, "SponJobsManager", "GoNextSet");
            }
            catch (Exception ex)
            {
                //lstResults.Status = "R";
                lstResults.Message = ex.Message;
                while (ex.InnerException != null)
                {
                    lstResults.Message += ex.InnerException.Message;
                    ex = ex.InnerException;
                }

                //+ ex.InnerException.InnerException.Message;

                var logManager = new LogManager();
                logManager.LogGeneralException(ex, "SponJobsManager", "GoNextSet");
            }
            return lstResults;
        }
        public NextResult GoNextSet(QuestionQuery query)
        {
            var lstResults = new NextResult();
            lstResults.Status = "W";
            lstResults.Message = "Required";
            try
            {
                lstResults.Required = new List<long>();
                lstResults.Selected = new List<long>();
                List<Question> lst = SessionManager.QuestResult;
                foreach (Question quest in lst)
                {
                    if (quest.Set == query.currentSet)
                    {
                        if (quest.Value == null)
                        {
                            lstResults.Required.Add(quest.Number);
                        }
                        else
                        {
                            lstResults.Selected.Add(quest.Number);
                        }
                    }
                }
                if (lstResults.Required.Count == 0)
                {
                    lstResults.Status = "S";
                }
            }
            catch (IOException ex)
            {
                //lstResults.Status = "R";
                lstResults.Message = ex.Message;

                var logManager = new LogManager();
                logManager.LogIOException(ex, "SponJobsManager", "GoNextSet");
            }
            catch (Exception ex)
            {
                //lstResults.Status = "R";
                lstResults.Message = ex.Message;
                while (ex.InnerException != null)
                {
                    lstResults.Message += ex.InnerException.Message;
                    ex = ex.InnerException;
                }

                //+ ex.InnerException.InnerException.Message;

                var logManager = new LogManager();
                logManager.LogGeneralException(ex, "SponJobsManager", "GoNextSet");
            }
            return lstResults;
        }
        public FinalResult GoFinalResult_old(QuestionQuery query)
        {
            var lstResults = new FinalResult();
            lstResults.Status = "W";
            lstResults.Message = "Required";
            try
            {
                lstResults.Required = new List<long>();
                lstResults.Selected = new List<long>();
                List<Question> lst = SessionManager.QuestResult;
                PrintingData QuizResult = new PrintingData();
                foreach (Question quest in lst)
                {
                    if (quest.Set == query.currentSet)
                    {
                        if (quest.Value == null)
                        {
                            lstResults.Required.Add(quest.Number);
                        }
                        else
                        {
                            lstResults.Selected.Add(quest.Number);
                        }
                    }
                }
                if (lstResults.Required.Count == 0)
                {
                    List<PrintingData> results = new List<PrintingData>();
                    QuizResult.PrintingDate = DateTime.Now;
                    foreach (Question quest in lst)
                    {
                        switch (quest.Group)
                        {
                            case 1:
                                QuizResult.EResult += (long)quest.Value;
                                break;
                            case 2:
                                QuizResult.IResult += (long)quest.Value;
                                break;
                            case 3:
                                QuizResult.SResult += (long)quest.Value;
                                break;
                            case 4:
                                QuizResult.NResult += (long)quest.Value;
                                break;
                            case 5:
                                QuizResult.TResult += (long)quest.Value;
                                break;
                            case 6:
                                QuizResult.FResult += (long)quest.Value;
                                break;
                            case 7:
                                QuizResult.JResult += (long)quest.Value;
                                break;
                            case 8:
                                QuizResult.PResult += (long)quest.Value;
                                break;
                            default:
                                break;
                        }
                    }
                    
                    results.Add(QuizResult);
                    PrintManager pm = new PrintManager();
                    lstResults.FilePath = pm.PrintResult(results);

                    SessionManager.QuizResult = new QuizTest() { PrintingData = QuizResult, FilePath = lstResults.FilePath };
                    
                    lstResults.Status = "S";
                }
            }
            catch (IOException ex)
            {
                //lstResults.Status = "R";
                lstResults.Message = ex.Message;

                var logManager = new LogManager();
                logManager.LogIOException(ex, "SponJobsManager", "GoFinalResult");
            }
            catch (Exception ex)
            {
                //lstResults.Status = "R";
                lstResults.Message = ex.Message;
                while (ex.InnerException != null)
                {
                    lstResults.Message += ex.InnerException.Message;
                    ex = ex.InnerException;
                }

                //+ ex.InnerException.InnerException.Message;

                var logManager = new LogManager();
                logManager.LogGeneralException(ex, "SponJobsManager", "GoFinalResult");
            }
            return lstResults;
        }
        public FinalResult GoFinalResult(QuestionQuery query)
        {
            var lstResults = new FinalResult();
            lstResults.Status = "W";
            lstResults.Message = "Required";
            try
            {
                lstResults.Required = new List<long>();
                lstResults.Selected = new List<long>();
                List<Question> lst = SessionManager.QuestResult;
                PrintingData2 QuizResult = new PrintingData2();
                foreach (Question quest in lst)
                {
                    if (quest.Set == query.currentSet)
                    {
                        if (quest.Value == null)
                        {
                            lstResults.Required.Add(quest.Number);
                        }
                        else
                        {
                            lstResults.Selected.Add(quest.Number);
                        }
                    }
                }
                if (lstResults.Required.Count == 0)
                {
                    List<PrintingData2> results = new List<PrintingData2>();
                    QuizResult.PrintingDate = DateTime.Now;
                    foreach (Question quest in lst)
                    {
                        switch (quest.Group)
                        {
                            case 1:
                                QuizResult.EResult += (long)quest.Value;
                                break;
                            case 2:
                                QuizResult.AResult += (long)quest.Value;
                                break;
                            case 3:
                                QuizResult.CResult += (long)quest.Value;
                                break;
                            case 4:
                                QuizResult.IResult += (long)quest.Value;
                                break;
                            case 5:
                                QuizResult.SResult += (long)quest.Value;
                                break;
                            case 6:
                                QuizResult.RResult += (long)quest.Value;
                                break;
                            
                            default:
                                break;
                        }
                    }

                    results.Add(QuizResult);
                    PrintManager pm = new PrintManager();
                    lstResults.FilePath = pm.PrintResult2(results);

                    SessionManager.QuizResult = new QuizTest() { PrintingData2 = QuizResult, FilePath = lstResults.FilePath };

                    lstResults.Status = "S";
                }
            }
            catch (IOException ex)
            {
                //lstResults.Status = "R";
                lstResults.Message = ex.Message;

                var logManager = new LogManager();
                logManager.LogIOException(ex, "SponJobsManager", "GoFinalResult2");
            }
            catch (Exception ex)
            {
                //lstResults.Status = "R";
                lstResults.Message = ex.Message;
                while (ex.InnerException != null)
                {
                    lstResults.Message += ex.InnerException.Message;
                    ex = ex.InnerException;
                }

                //+ ex.InnerException.InnerException.Message;

                var logManager = new LogManager();
                logManager.LogGeneralException(ex, "SponJobsManager", "GoFinalResult2");
            }
            return lstResults;
        }
    }
}