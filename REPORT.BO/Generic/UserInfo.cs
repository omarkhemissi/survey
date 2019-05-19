using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    public class UserInfo
    {
        [DataMember]
        public long Qid { get; set; }

        [DataMember]
        public string NameAr { get; set; }

        [DataMember]
        public string NameEn { get; set; }

        [DataMember]
        public string UserName
        {
            get
            {
                return System.Web.HttpContext.Current.Session["UserLanguage"].ToString() == "ar-QA" ? NameAr : NameEn;
            }
        }

        [DataMember]
        public string UserEmail { get; set; }

        [DataMember]
        public string UserMobile { get; set; }
    }
}
