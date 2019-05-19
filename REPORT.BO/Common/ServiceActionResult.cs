using System.Collections.Generic;
using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class ServiceActionResult
    {
        [DataMember]
        public long ServiceId { get; set; }

        [DataMember]
        public List<ServiceStepValidation> ValidationResults { get; set; }

        [DataMember]
        public string Status { get; set; }

        [DataMember]
        public string BeApplicationNo { get; set; }

        [DataMember]
        public int? BeApplicationYear { get; set; }

        [DataMember]
        public string HashedApplicationURL { get; set; }
    }
}
