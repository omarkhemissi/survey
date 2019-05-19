using System.Runtime.Serialization;

namespace REPORT.BO
{
    public class Lookup
    {
        [DataMember]
        public long? Id { get; set; }
        [DataMember]
        public string DescAr { get; set; }
        [DataMember]
        public string DescEn { get; set; }
        [DataMember]
        public string DescMl { get; set; }
        [DataMember]
        public string Code { get; set; }
        [DataMember]
        public string EntryAllowed { get; set; }

        // Temp Data for Demo
        [DataMember]
        public string NatFrpNameAr { get; set; }
        [DataMember]
        public string NatFrpNameEn { get; set; }

        [DataMember]
        public double NatGrpMinPct { get; set; }

        [DataMember]
        public double NatGrpMaxNoPayPct { get; set; }

        [DataMember]
        public double NatGrpMaxWithPayPct { get; set; }


        [DataMember]
        public string ConcatValue
        {
            get
            {
                var groupName = System.Web.HttpContext.Current.Session["UserLanguage"].ToString() == "ar-QA" ? NatFrpNameAr : NatFrpNameEn;
                return Code + " ^" + groupName + "^" + NatGrpMinPct.ToString() + "^" + NatGrpMaxNoPayPct.ToString() + "^" + NatGrpMaxWithPayPct.ToString();
            }
        }
    }
}
