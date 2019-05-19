using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Globalization;

namespace REPORT.BO
{
    [DataContract]
    [Serializable()]
    public class Feature
    {
        [DataMember]
        public long FeatureId { get; set; }
        [DataMember]
        public string FeatureDesc { get; set; }

        [DataMember]
        public long CAction { get; set; }
        [DataMember]
        public long RAction { get; set; }
        [DataMember]
        public long UAction { get; set; }
        [DataMember]
        public long DAction { get; set; }
    }
    
}
