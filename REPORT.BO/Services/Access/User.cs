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
    public class User
    {
        [DataMember]
        public long UserId { get; set; }
        [DataMember]
        public string Login { get; set; }
        [DataMember]
        public List<Feature> Features { get; set; }
        
        public bool Check(long id, bool CCaction, bool RCaction, bool UCaction, bool DCaction)
        {
            bool bResult = false;
            try
            {
                Feature ft = Features.Where(n => n.FeatureId == id).FirstOrDefault();
                if (ft != null)
                {
                    bResult = true;
                    if (CCaction && (ft.CAction != 1))
                    {
                        bResult = false;
                    }
                    if (RCaction && (ft.RAction != 1))
                    {
                        bResult = false;
                    }
                    if (UCaction && (ft.UAction != 1))
                    {
                        bResult = false;
                    }
                    if (DCaction && (ft.DAction != 1))
                    {
                        bResult = false;
                    }
                }
            }
            catch (Exception)
            {
            }
            return bResult;
        }
        
    }
    
}
