using Microsoft.EntityFrameworkCore;
using vehicleSalesService.Model;

namespace vehicleSalesService.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }
        public DbSet<VehicleSales> VehicleSalesData { get; set; }
    }
}
