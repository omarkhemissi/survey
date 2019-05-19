using System.Runtime.Serialization;

namespace REPORT.BO
{
    [System.Serializable]
    [DataContract]
    public class TestEstUser
    {
        [DataMember]
        public long? EstablishmentCode { get; set; }

        [DataMember]
        public string EstablishmentNameAr { get; set; }

        [DataMember]
        public string EstablishmentNameEn { get; set; }
        [DataMember]
        public long? UserQid { get; set; }

        [DataMember]
        public string UserNameAr { get; set; }

        [DataMember]
        public string UserNameEn { get; set; }

        [DataMember]
        public string InternalDescription { get; set; }
    }
}
