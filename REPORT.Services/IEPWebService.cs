﻿using REPORT.BO;
using System.Collections.Generic;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace REPORT.Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IEPWebService : IFreeSurveyManager, ISurveyManager, IAdminManager, IFreeAdminManager
    {
        // TODO: Add your service operations here

        
    }
    // Use a data contract as illustrated in the sample below to add composite types to service operations.


    


}