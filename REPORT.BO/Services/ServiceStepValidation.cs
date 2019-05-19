using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]

    public class ServiceStepValidation
    {
        [DataMember]
        public string ValidationResult { get; set; }

        [DataMember]
        public string ValidationGuidance { get; set; }
    }
}