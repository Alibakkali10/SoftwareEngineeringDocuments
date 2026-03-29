using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class SuiteDubai : ISuite
    {
        public string GetPays()
        {
            return "Dubai";
        }

        public string GetOptionsIncluses()
        {
            return "Linge VIP, Chauffeur privé, Mini-bar luxe, Room Service 24/7, Piscine privée, Jacuzzi, Chef personnel";
        }

        public string GetPrix()
        {
            return "1200$ / nuit";
        }

        public string GetDescription()
        {
            return "Suite ultra luxe avec services VIP et expérience premium.";
        }
    }
}