
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace REPORT.BO
{
    [Serializable]
    public class FreeSurvey
    {
        public long Value;
        public long Number;
        public long Group;              //1, 2, 3, 4
        public string GroupDesc;
        public string ContentEn;
        public string ContentAr;
        public string AnswerAr1;
        public string AnswerAr2;
        public string AnswerEn1;
        public string AnswerEn2;
    }
    [Serializable]
    public class FreeReport
    {
        public long Number;
        public string Name;
        public string Email;
        public string BirthDay;
        public string Result;
        public string Date;
    }

    /// <summary>
    /// ////////////////////////////////////////////////////////////////
    /// </summary>

    public class ReportQuery
    {
        public long Number;
        public string Name;
        public string Email;
        public string BirthDay;
        public string Result;
        public string CrudAction { get; set; }
    }

    [Serializable]
    public class Report
    {
        public long Number;
        public string Name;
        public string Email;
        public string BirthDay;
        public string Result;
        public string Date;
    }
    public class Query
    {
        public long Number { get; set; }
        public long Set { get; set; }
        public long Group { get; set; }
        public string ContentEn { get; set; }
        public string ContentAr { get; set; }
        public string CrudAction { get; set; }
        public string AnswerAr1 { get; set; }
        public string AnswerAr2 { get; set; }
        public string AnswerEn1 { get; set; }
        public string AnswerEn2 { get; set; }
    }
    [Serializable]
    public class Question
    {
        public long? Value;
        public long Number;
        public long Set;
        public long Group;
        public string GroupDesc;
        public string ContentEn;
        public string ContentAr;
    }
    [Serializable]
    public class QuizTest
    {
        public PrintingData PrintingData;
        public PrintingData2 PrintingData2;
        public PrintingData3 PrintingData3;
        public string FilePath;
        public List<SubReportData> briefs;
    }
    public class SelectQuestResult
    {
        public string Status;
        public string Message;
        public List<long> Required;
        public List<long> Selected;
    }
    public class NextResult
    {
        public string Status;
        public string Message;
        public List<long> Required;
        public List<long> Selected;
    }
    public class FinalResult
    {
        public string Status;
        public string Message;
        public List<long> Required;
        public List<long> Selected;
        public string FilePath;
    }
    public class QuestionQuery
    {
        public string user;
        public long question;
        public long value;
        public long currentSet;
    }




    public class CandidatureQuery
    {
        public string user;
        public long ID;
        public string CrudAction;
        public long ParentId;
        public long SponID;
        public long JobGroupID;
    }
    public class CandidatureResult
    {
        public string user;
        public long QID;
        public long CandId;
        public long JobId;
        public string CrudAction;
        public long ResultId;
        public long FileId;
        public string Remark;
        public string FilePath;
        public string Status;
    }
    public class FollowUpQuery
    {
        public string user;
        public long SponsorId;
        public string BeginDate;
        public string EndDate;
        public long JobId;
        public long QID;
    }
    public class CandidateInfoResult
    {
        public List<ServiceStepValidation> ValidationResults { get; set; }
        public string Status { get; set; }
        public string QID = "";
        public string CandName = "";
        public string Speciality = "";
        public string Education = "";
        public string Mobile = "";
        public string Gender = "";
        public string user="";
        public string EducSpec = "";
        public string GenderOld = "";
        public string EmploymentStatus = "";

    }
}

