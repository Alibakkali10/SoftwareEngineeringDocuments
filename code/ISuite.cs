using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hotelerie
{
    public interface ISuite
    {
        string GetPays();
        string GetOptionsIncluses();
        string GetPrix();
        string GetDescription();
       
    }
}
