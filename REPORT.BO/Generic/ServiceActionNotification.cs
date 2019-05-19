using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class ServiceActionNotification
    {
        [DataMember]
        public string ServiceName { get; set; }

        [DataMember]
        public long MdRequestId { get; set; }

        [DataMember]
        public long MdServiceId { get; set; }

        [DataMember]
        public long ServiceId { get; set; }

        [DataMember]
        public string Action { get; set; }

        [DataMember]
        public string FromStep { get; set; }

        [DataMember]
        public string ToStep { get; set; }
    }
}
