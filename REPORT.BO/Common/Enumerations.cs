using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace REPORT.BO.Common
{
    public static class Enumerations
    {
        public static  class LocationType
        {
            public static readonly int Branches = 1;
            public static readonly int OtherBranches = 2;
            public static readonly int LivingBranches = 3;
        }
        public sealed class ServiceType
        {
            private readonly int _id;
            private readonly string _code;
            private readonly string _description;
            private readonly string _tabName;
            private readonly string _stepName;

            public int Id => _id;
            public string Code => _code;
            public string Description => _description;
            public string TabName => _tabName;
            public string StepName => _stepName;

            private ServiceType(int id, string code, string description, string tabName, string stepName)
            {
                _code = code;
                _id = id;
                _description = description;
                _tabName = tabName;
                _stepName = stepName;
            }

            public static ServiceType ManageEstablishmentMainProfile => new ServiceType(1, "001", "Manage Establishment Main Profile", "MainProfile", "ManageMainProfile");
            public static ServiceType ManageEstablishmentPartners => new ServiceType(2, "002", "Manage Establishment Partners", "Contacts", "ManageContacts");
            public static ServiceType ManageEstablishmentBranches => new ServiceType(3, "003", "Manage Establishment Branches", "LocationBranches", "ManageBranches");
            public static ServiceType ManageEstablishmentOtherLocations => new ServiceType(4, "004", "Manage Establishment Other Locations", "OtherLocations", "ManageOtherLocations");
            public static ServiceType ManageEstablishmentLivingLocations => new ServiceType(5, "005", "Manage Establishment Living Locations", "ResidenceLocations", "ManageLiving");
            public static ServiceType InspectionDistributions => new ServiceType(6, "006", "InspectionDistributions", "InspectionDistributions", "InspectionDistributions");
            public static ServiceType ManageProjects => new ServiceType(7, "007", "Manage Projects", "divProject", "Manage Projects");
            public static ServiceType ManageEstablishmentContacts => new ServiceType(2, "002", "Manage Establishment Contacts", "EstContactsHeader", "ManageContacts");
            public static ServiceType ManageInspectionHeader => new ServiceType(1, "001", "Manage Inspection Header", "InspectionHeader", "ManageInspectionHeader");
        }
    }
}
