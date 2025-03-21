using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using vehicleSalesService.Data;
using vehicleSalesService.Model;

namespace vehicleSalesService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VehicleSalesController : ControllerBase
    {
        private readonly AppDbContext _context;

        public VehicleSalesController(AppDbContext context)
        {
            _context = context;
        }

       
        [HttpGet]
        public async Task<ActionResult<IEnumerable<VehicleSales>>> GetSalesData()
        {
            try
            {
                var data = await _context.VehicleSalesData.ToListAsync();

                if (!data.Any())
                {
                    return NotFound("No data found in the database.");
                }

                return Ok(data);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }

    }
}
