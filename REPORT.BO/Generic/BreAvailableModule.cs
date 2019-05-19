using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class BreAvailableModule
    {
        [DataMember]
        public string _Login { get; set; }
        [DataMember]
        public string _UserName { get; set; }
        [DataMember]
        public string _ModuleNameAr { get; set; }
        [DataMember]
        public string _ModuleNameEn { get; set; }
        [DataMember]
        public string _ModuleUrl { get; set; }
    }
}
