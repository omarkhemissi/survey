using System.Runtime.Serialization;

namespace REPORT.BO
{
    public class SummaryItem
    {
        [DataMember]
        public string Title { get; set; }

        [DataMember]
        public string TabName { get; set; }

        [DataMember]
        public bool IsFilled { get; set; }

        [DataMember]
        public string Description { get; set; }

        [DataMember]
        public string Brief { get; set; }
    }
}
