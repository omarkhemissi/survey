using System.Collections.Generic;
using REPORT.BO;
using System;
using System.IO;

namespace REPORT.Services
{
    public class FreeSurveyManager : IFreeSurveyManager
    {
        LogManager logManager = new LogManager();

        public List<FreeSurvey> SelectAnswer(QuestionQuery query)
        {
            var lstResults = new List<FreeSurvey>();
            try
            {
                List<FreeSurvey> lst = SessionManager.FreeSurveyResult;
                foreach (FreeSurvey quest in lst)
                {
                    if (quest.Number == query.question)
                    {
                        quest.Value = query.value;
                    }
                }

                SessionManager.FreeSurveyResult = lst;
                lstResults = lst;
            }
            catch (IOException ex)
            {
                //lstResults.Status = "R";

                var logManager = new LogManager();
                logManager.LogIOException(ex, "SponJobsManager", "GoFinalResult2");
            }
            catch (Exception ex)
            {
                //lstResults.Status = "R";
                while (ex.InnerException != null)
                {
                    ex = ex.InnerException;
                }

                //+ ex.InnerException.InnerException.Message;

                var logManager = new LogManager();
                logManager.LogGeneralException(ex, "SponJobsManager", "GoFinalResult2");
            }
            return lstResults;
        }
        public FreeSurvey SubmitSurvey()
        {
            var lst = SessionManager.FreeSurveyResult;
            PrintingData3 QuizResult = new PrintingData3();
            
            QuizResult.SubmitDate = DateTime.Now;
            foreach (FreeSurvey quest in lst)
            {
                var value = (long)quest.Value;
                switch (quest.Group)
                {
                    case 1:                        
                        if (value == 1)
                        {
                            QuizResult.Result_11 += 1;
                        }
                        else
                        {
                            QuizResult.Result_12 += 1;
                        }
                        break;
                    case 2:
                        if (value == 1)
                        {
                            QuizResult.Result_21 += 1;
                        }
                        else
                        {
                            QuizResult.Result_22 += 1;
                        }
                        break;
                    case 3:
                        if (value == 1)
                        {
                            QuizResult.Result_31 += 1;
                        }
                        else
                        {
                            QuizResult.Result_32 += 1;
                        }
                        break;
                    case 4:
                        if (value == 1)
                        {
                            QuizResult.Result_41 += 1;
                        }
                        else
                        {
                            QuizResult.Result_42 += 1;
                        }
                        break;
                    
                    default:
                        break;
                }
            }
           
            //
            SessionManager.QuizResult = new QuizTest()
            {
                PrintingData3 = QuizResult,
                briefs = new FreeAdminManager().GetBriefingtList(QuizResult.Result)
            };
            
            return new FreeSurvey();
        }
    }
}