using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DuAnFptShop.Models.ViewModel
{
    public class ProductViewModel
    {
        public int ProductID { get; set; }
        public int CateID { get; set; }
        public string ProName { get; set; }
        public string ProDecription { get; set; }
        public string Screen { get; set; }
        public string Camera { get; set; }
        public string CameraSelfie { get; set; }
        public string Cpu { get; set; }
        public string Battery { get; set; }
        public string Sim { get; set; }
        public string OperatingSystem { get; set; }
        public string Origin { get; set; }
        public int? LaunchTime { get; set; }
        public int? PerformanceBatteryID { get; set; }
        public int? ScreenSizeID { get; set; }
        public string ProImage { get; set; }
        public string ProDescriptionTitle { get; set; }
        public decimal? NewPrice { get; set; }
        public decimal? OldPrice { get; set; }
        public int? RamID { get; set; }
        public int? StorageID { get; set; }
    }
}