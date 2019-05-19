
using System;
using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    [Serializable()]
    public class CandInfo
    {
        [DataMember]
        public string user { get; set; }
        [DataMember]
        public string CandName { get; set; }

    }
}
