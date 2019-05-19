using System.Runtime.Serialization;

namespace REPORT.BO
{
    [System.Serializable]
    [DataContract]
    public class AttachmentFile
    {
        [DataMember]
        public decimal MdFileId { get; set; }

        [DataMember]
        public decimal MdAttachmentId { get; set; }

        [DataMember]
        public decimal MdRequestId { get; set; }

        [DataMember]
        public string FileName { get; set; }

        [DataMember]
        public decimal? FileSize { get; set; }

        [DataMember]
        public string FileContentType { get; set; }

        [DataMember]
        public string FileURL { get; set; }

        [DataMember]
        public string FileContext { get; set; }

        [DataMember]
        public string FileIsRequired { get; set; }

        [DataMember]
        public string MdAttachmentName { get; set; }

        [DataMember]
        public string RequestInstanceType { get; set; }

        [DataMember]
        public string RequestInstanceDesc { get; set; }
    }
}
