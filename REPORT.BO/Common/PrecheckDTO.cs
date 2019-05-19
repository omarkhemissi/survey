using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class PrecheckDTO
    {
        [DataMember]
        public long EstablishmentCode { get; set; }

        [DataMember]
        public long QId { get; set; }
    }
}
