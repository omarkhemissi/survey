using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace REPORT.BO
{
    public class FollowUpRequest
    {
        public long Id { get; set; }
        public long? EstablishmentCode { get; set; }
        public long ServiceId { get; set; }
        public long? UserQid { get; set; }
        public string BeIsSubmitted { get; set; }
        public string CommercialRegistry { get; set; }
        public string CommercialLicense { get; set; }
        public string MdEsrvCode { get; set; }
        public string MdEsrvNameAr { get; set; }
        public string MdEsrvNameEn { get; set; }
        public string EsrvUrl { get; set; }
        public string CreatedOn { get; set; }
        public string RequestDescription { get; set; }
    }
}
