namespace vehicleSalesService.Model
{
    public class VehicleSales
    {
        public int Id { get; set; }
        public string Month { get; set; }
        public int Year { get; set; }
        public int NewVehicleSales { get; set; }
        public int UsedVehicleSales { get; set; }
        public int TotalSales => NewVehicleSales + UsedVehicleSales;  
        public int InventoryLevels { get; set; }
        public decimal AppointmentSetRate { get; set; }
        public decimal AppointmentCloseRate { get; set; }
    }
}
