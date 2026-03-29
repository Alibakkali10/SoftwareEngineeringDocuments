using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class UsineSuite
    {
        public static ISuite CreerSuite(string ville)
        {
            switch (ville)
            {
                case "Montreal":
                    return new SuiteMontreal();

                case "Dubai":
                    return new SuiteDubai();

                case "NewYork":
                    return new SuiteNewYork();

                case "Tanger":
                    return new SuiteTanger();

                default:
                    return null;
            }
        }
    }
}