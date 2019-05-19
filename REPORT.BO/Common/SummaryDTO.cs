using System.Runtime.Serialization;

namespace REPORT.BO
{
    public class SummaryDTO
    {
        [DataMember]
        public long ServiceId { get; set; }

        [DataMember]
        public string UserLanguage { get; set; }
    }
}
