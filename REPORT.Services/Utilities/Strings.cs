namespace REPORT.Services
{
    public class Strings
    {
        public class DBValues
        {
            public const string LookupEntryAllowed = "Y";
        }

        public class DBServiceCodes
        {
            public const string RecruitService = "LRA_01";
            public const string Followup = "LRA_02";
            public const string ProjectService = "LRA_03";
            public const string EstExceptionService = "LRA_04";
            public const string EstIndustryService = "LRA_05";
            public const string MaxLaborService = "LRA_06";
            public const string InvestgationService = "LRA_07";
            public const string ProfileService = "LRA_08";
        }

        public class DBServiceNames
        {
            public const string RecruitService = "RecruitService";
            public const string Followup = "Followup";
            public const string ProjectService = "ProjectService";
            public const string EstExceptionService = "EstExceptionService";
            public const string EstIndustryService = "EstIndustryService";
            public const string MaxLaborService = "MaxLaborService";
            public const string InvestgationService = "InvestgationService";
            public const string ProfileService = "ProfileService";
            public const string InspectionService = "InspectionService";
            public const string EstContactsService = "EstContactsService";
            public const string EstBranchesService = "EstBranchesService";
            public const string EstOtherWorkLocationsService = "EstOtherWorkLocationsService";
        }

        public class DBComponentNames
        {
            public const string Contact = "Contact";
            public const string Location = "Location";
            public const string Branch = "Branch";
            public const string Residence = "Residence";
            public const string InspectionDistribution = "InspectionDistribution";
            public const string OtherWorkLocation = "OtherWorkLocation";
            public const string Projects = "Projects";
        }

        public class Steps
        {
            public const string MainReqest = "MainReqest";
            public const string SupReqest = "SupReqest";
        }

        public struct Cultures
        {
            public const string enUS = "en-US";
            public const string arAE = "ar-QA";
        }

        public class ContactTypes
        {
            public const int ResponsibleManager = 1;
            public const int Partner = 2;
            public const int Signature = 3;
            public const int CompanyRepresentative = 4;
        }

        public class RequestState
        {
            public const string Draft = "DRAFT";
            public const string Saved = "SAVED";
        }

        public class ComponentActions
        {
            public const string Add = "Add";
            public const string Update = "Update";
            public const string Delete = "Delete";
        }

        public class ServiceActions
        {
            public const string Navigation = "Navigation";
            public const string ReviewRequest = "ReviewRequest";
            public const string Submit = "Submit";
        }
    }
}