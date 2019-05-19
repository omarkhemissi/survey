using System;
using System.Runtime.Serialization;

namespace REPORT.BO
{
    [DataContract]
    [Serializable()]
    public class UserItem
    {
        public string CrmToken { get; set; }
        public string DisplayName { get; set; }
        public string Email { get; set; }
        public bool IsEmbassy { get; set; }
        public DateTime LastLogonDate { get; set; }
        public string Mobile { get; set; }
        public string Name { get; set; }
        public string NameAr { get; set; }
        public string OrganizationID { get; set; }
        public string OrganizationName { get; set; }
        public string Phone { get; set; }
        public string POBoxOffice { get; set; }
        public string QID { get; set; }
        public string UID { get; set; }
        //public Roles? UserRole { get; set; }
        public string UserType { get; set; }

        //public static UserItem GetUser(global::com.mehuna.common.protocol.SamlAssertion assertion);
    }
}
