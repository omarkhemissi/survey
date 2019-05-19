using System.Collections.Generic;
using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class AttachmentResult
    {
        [DataMember]
        public decimal MdFileId { get; set; }

        [DataMember]
        public List<string> ValidationResults { get; set; }

        [DataMember]
        public string Status { get; set; }

        [DataMember]
        public AttachmentFile FileInfo { get; set; }
    }
}
