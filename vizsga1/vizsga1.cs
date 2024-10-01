using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace vizsga1
{
    internal class vizsga1
    {
        public int Year { get; set; }
        public string Country { get; set; }
        public string City { get; set; }

        public Dictionary<string, int> Meadals { get; set; }
        public vizsga1(string row)
        {
            var data = row.Split(',');
            Year = int.Parse(data[0]);
            Country = data[1];
            City = data[2];

        }
    }
}
