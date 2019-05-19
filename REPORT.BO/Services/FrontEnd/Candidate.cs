using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace REPORT.BO
{
    [Serializable()]
    [DataContract()]
    public class Candidate
    {
        [DataMember]
        public object QID { get; set; }
        [DataMember]
        public string NAMEAR { get; set; }
        [DataMember]
        public string NAMEEN { get; set; }
        [DataMember]
        public string OTP { get; set; }
        [DataMember]
        public string Mobile { get; set; }
        [DataMember]
        public bool MobileVerified { get; set; }
        [DataMember]
        public int Retries { get; set; }
        [DataMember]
        public DateTime LoginDate { get; set; }
        [DataMember]
        public long LoginId { get; set; }
        [DataMember]
        public int ResendOtp { get; set; }

        
    }
}
