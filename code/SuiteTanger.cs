using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class SuiteTanger : ISuite
    {
        public string GetPays()
        {
            return "Tanger";
        }

        public string GetOptionsIncluses()
        {
            return "Vue mer, Mini-bar sans alcool, Taxi, Room Service, Terrasse privée";
        }

        public string GetPrix()
        {
            return "250$ / nuit";
        }

        public string GetDescription()
        {
            return "Suite relax avec vue sur mer et ambiance calme.";
        }
    }
}