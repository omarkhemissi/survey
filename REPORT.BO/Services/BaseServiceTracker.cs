using System;
using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class BaseServiceTracker
    {
        [DataMember]
        public long Id { get; set; }

        [DataMember]
        public long? EstablishmentCode { get; set; }

        [DataMember]
        public DateTime? CreatedOn { get; set; }

        [DataMember]
        public long? UserQid { get; set; }

        [DataMember]
        public long? MdRequestId { get; set; }

        [DataMember]
        public string UserName { get; set; }

        [DataMember]
        public string UserEmail { get; set; }

        [DataMember]
        public string UserMobile { get; set; }

        [DataMember]
        public string EstablishmentName { get; set; }

        [DataMember]
        public long? ServiceId { get; set; }

        [DataMember]
        public string BeIsSubmitted { get; set; }

        [DataMember]
        public string BeApplicationNo { get; set; }

        [DataMember]
        public int? BeApplicationYear { get; set; }

        [DataMember]
        public string Deleted { get; set; }

        [DataMember]
        public bool IsTemp { get; set; }

        [DataMember]
        public string RequestState { get; set; }

        [DataMember]
        public string RequestTrackingStatus { get; set; }
    }
}
