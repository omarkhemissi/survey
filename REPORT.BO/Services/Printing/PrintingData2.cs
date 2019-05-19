using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Globalization;

namespace REPORT.BO
{
    [DataContract]
    [Serializable()]
    public class SubReportData
    {
        [DataMember]
        public string Briefs { get; set; }
    }
    [DataContract]
    [Serializable()]
    public class PrintingData3
    {

        [DataMember]
        public long Result_11 { get; set; }
        [DataMember]
        public long Result_12 { get; set; }
        [DataMember]
        public long Result_1_1//E
        {
            get
            {
                return Result_11 <= Result_12 ? 0 : (Result_11 - Result_12) * 10 / (Result_11 + Result_12);
            }
        }
        [DataMember]
        public long Result_1_2//I
        {
            get
            {
                return Result_12 <= Result_11 ? 0 : (Result_12 - Result_11) * 10 / (Result_11 + Result_12);
            }
        }
        [DataMember]
        public long Result_21 { get; set; }
        [DataMember]
        public long Result_22 { get; set; }
        [DataMember]
        public long Result_2_1//S
        {
            get
            {
                return Result_21 <= Result_22 ? 0 : (Result_21 - Result_22) * 10 / (Result_21 + Result_22);
            }
        }
        [DataMember]
        public long Result_2_2//N
        {
            get
            {
                return Result_22 <= Result_21 ? 0 : (Result_22 - Result_21) * 10 / (Result_21 + Result_22);
            }
        }
        [DataMember]
        public long Result_31 { get; set; }
        [DataMember]
        public long Result_32 { get; set; }
        [DataMember]
        public long Result_3_1//T
        {
            get
            {
                return Result_31 <= Result_32 ? 0 : (Result_31 - Result_32) * 10 / (Result_31 + Result_32);
            }
        }
        [DataMember]
        public long Result_3_2//F
        {
            get
            {
                return Result_32 <= Result_31 ? 0 : (Result_32 - Result_31) * 10 / (Result_31 + Result_32);
            }
        }
        [DataMember]
        public long Result_41 { get; set; }
        [DataMember]
        public long Result_42 { get; set; }
        [DataMember]
        public long Result_4_1//J
        {
            get
            {
                return Result_41 <= Result_42 ? 0 : (Result_41 - Result_42) * 10 / (Result_41 + Result_42);
            }
        }
        [DataMember]
        public long Result_4_2//P
        {
            get
            {
                return Result_42 <= Result_41 ? 0 : (Result_42 - Result_41) * 10 / (Result_41 + Result_42);
            }
        }

        [DataMember]
        public DateTime SubmitDate { get; set; }
        [DataMember]
        public string sSubmitDate
        {
            get
            {
                return SubmitDate.ToString("dd MMMM yyyy");
            }
        }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string Result
        {
            get
            {
                return  (Result_1_1 != 0 ? "E" : "I") +
                        (Result_2_1 != 0 ? "S" : "N") +
                        (Result_3_1 != 0 ? "T" : "F") +
                        (Result_4_1 != 0 ? "J" : "P");
            }
        }

    }

    [DataContract]
    [Serializable()]
    public class PrintingData2
    {

        [DataMember]
        public long EResult { get; set; }
        [DataMember]
        public long AResult { get; set; }
        [DataMember]
        public long CResult { get; set; }
        [DataMember]
        public long IResult { get; set; }
        [DataMember]
        public long SResult { get; set; }
        [DataMember]
        public long RResult { get; set; }
        
        [DataMember]
        public DateTime PrintingDate { get; set; }
        [DataMember]
        public string Result
        {
            get
            {
                string _Result = "";
                return _Result;
            }
        }
        [DataMember]
        public string ResultS
        {
            get
            {
                string _Result = "";
                return _Result;
            }
        }
    }
}
