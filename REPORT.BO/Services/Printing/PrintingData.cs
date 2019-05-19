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
    public class PrintingData
    {

        [DataMember]
        public long EResult { get; set; }
        [DataMember]
        public long IResult { get; set; }
        [DataMember]
        public long SResult { get; set; }
        [DataMember]
        public long NResult { get; set; }
        [DataMember]
        public long TResult { get; set; }
        [DataMember]
        public long FResult { get; set; }
        [DataMember]
        public long JResult { get; set; }
        [DataMember]
        public long PResult { get; set; }
        [DataMember]
        public DateTime PrintingDate { get; set; }
        [DataMember]
        public string Result
        {
            get
            {
                string _Result = "";
                _Result += EResult >= IResult ? "E" : "I";
                _Result += SResult >= NResult ? "S" : "N";
                _Result += TResult >= FResult ? "T" : "F";
                _Result += JResult >= PResult ? "J" : "P";

                return _Result;
            }
        }
        [DataMember]
        public string ResultS
        {
            get
            {
                string _Result = "";
                _Result += EResult >= IResult ? "   Extraversion "+ EResult : "   Introversion "+ IResult;
                _Result += SResult >= NResult ? "   Sensing " + SResult : "   Intuition " + NResult;
                _Result += TResult >= FResult ? "   Thinking " + TResult : "   Feeling " + FResult;
                _Result += JResult >= PResult ? "   Judging " + JResult : "   Perceiving " + PResult;

                return _Result;
            }
        }
    }
}
