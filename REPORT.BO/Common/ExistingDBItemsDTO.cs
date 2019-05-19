using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class ExistingDBItemsDTO
    {
        [DataMember]
        public string DisplayText { get; set; }

        [DataMember]
        public string ContactObject { get; set; }
    }
}
