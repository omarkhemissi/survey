using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class AttachmentType
    {
        [DataMember]
        public decimal MdAttachmentId { get; set; }

        [DataMember]
        public decimal MdRequestId { get; set; }

        [DataMember]
        public decimal MdServiceId { get; set; }

        [DataMember]
        public string AttachmentNameAr { get; set; }

        [DataMember]
        public string AttachmentNameEn { get; set; }

        [DataMember]
        public string Required { get; set; }

        [DataMember]
        public string MdRequestShortName { get; set; }

        [DataMember]
        public string MdRequestArDesc { get; set; }

        [DataMember]
        public string MdRequestEnDesc { get; set; }

        [DataMember]
        public string RequestInstanceDesc { get; set; }
    }
}
