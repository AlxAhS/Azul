using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Blue.DAL.Models
{
    public class ClinicHistory
    {
        public string ID { get; set; }
        public string Patient { get; set; }
        List<HistoryDetail> Detail = new List<HistoryDetail>();
        public string AnalisisPlan { get; set; }
        public string Diagnostic { get; set; }
        public string NeurologicalStatus { get; set; }
        public string HeadandShoulder { get; set; }
        public string CardioPulmonar { get; set; }
        public string Abdomen { get; set; }
        public string GenitoUrinal { get; set; }
    }
}
