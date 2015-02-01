﻿using System.Linq;
using System.Web.Mvc;
using Neemo.CarParts;

namespace Neemo.Web.Controllers
{
    public class CarPartController : Controller
    {
        private readonly ICarPartService _carPartService;

        public CarPartController(ICarPartService carPartService)
        {
            _carPartService = carPartService;
        }

        public ActionResult GetMakesOptions()
        {
            var makes = _carPartService.GetMakes()
                .Select(m => new SelectListItem { Text = m.Title, Value = m.Id.ToString() });

            return Json(makes, JsonRequestBehavior.AllowGet);
        }
    }
}