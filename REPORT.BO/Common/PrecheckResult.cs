using System.Collections.Generic;
using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class PrecheckResult
    {
        [DataMember]
        public string PrecheckStatus { get; set; }

        [DataMember]
        public string MDRequestID { get; set; }

        [DataMember]
        public string MDServiceID { get; set; }

        [DataMember]
        public string ValidTrack { get; set; }

        [DataMember]
        public List<ServiceStepValidation> PrecheckValidationResults { get; set; }
    }
}
