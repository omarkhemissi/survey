using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class AvailableService
    {
        [DataMember]
        public long? EstablishmentCode { get; set; }

        [DataMember]
        public string EstablishmentNameAr { get; set; }

        [DataMember]
        public string MdEsrvCode { get; set; }

        [DataMember]
        public string MdEsrvNameAr { get; set; }

        [DataMember]
        public string MdEsrvNameEn { get; set; }

        [DataMember]
        public string EsrvDescAr { get; set; }

        [DataMember]
        public string EsrvDescEn { get; set; }

        [DataMember]
        public string EsrvUrl { get; set; }

        [DataMember]
        public int? EsrvDispalyOrder { get; set; }

        [DataMember]
        public string ActiveFlag { get; set; }

        [DataMember]
        public string Remarks { get; set; }
    }
}
