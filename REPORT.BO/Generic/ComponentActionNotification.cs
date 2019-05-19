using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class ComponentActionNotification
    {
        [DataMember]
        public string ComponentName { get; set; }

        [DataMember]
        public long MdRequestId { get; set; }

        [DataMember]
        public long MdServiceId { get; set; }

        [DataMember]
        public long ServiceId { get; set; }

        [DataMember]
        public string Action { get; set; }
    }
}
