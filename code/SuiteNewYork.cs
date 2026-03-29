using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class SuiteNewYork : ISuite
    {
        public string GetPays()
        {
            return "New York";
        }
        public string GetOptionsIncluses()
        {
            return "Wi-Fi rapide, Mini-bar, Taxi, Bureau de travail, Room Service";
        }
        public string GetPrix()
        {
            return "500$ / nuit";
        }
        public string GetDescription()
        {
            return "Suite moderne idéale pour les voyageurs d'affaires.";
        }
    }
}