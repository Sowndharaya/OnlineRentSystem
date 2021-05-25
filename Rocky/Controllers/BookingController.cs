using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Rocky.Data;
using Rocky.Models;
namespace Rocky.Controllers
{
    [Authorize(Roles = WC.AdminRole)]
    public class BookingController : Controller
    {
        private readonly ApplicationDbContext _db;

        public BookingController(ApplicationDbContext db)
        {
            _db = db;
        }


        public IActionResult Index()
        {
            IEnumerable<Booking> objList = _db.Booking;
            return View(objList);
        }


        //GET - CREATE
        public IActionResult Create()
        {
            return View();
        }


        //POST - CREATE
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Booking obj)
        {
            if (ModelState.IsValid)
            {
                _db.Booking.Add(obj);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(obj);

        }


        //GET - EDIT
        public IActionResult Edit(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var obj = _db.Booking.Find(id);
            if (obj == null)
            {
                return NotFound();
            }

            return View(obj);
        }

        //POST - EDIT
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Booking obj)
        {
            if (ModelState.IsValid)
            {
                _db.Booking.Update(obj);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(obj);

        }

        //GET - DELETE
        public IActionResult Delete(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var obj = _db.Booking.Find(id);
            if (obj == null)
            {
                return NotFound();
            }

            return View(obj);
        }

        //POST - DELETE
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult DeletePost(int? id)
        {
            var obj = _db.Booking.Find(id);
            if (obj == null)
            {
                return NotFound();
            }
            _db.Booking.Remove(obj);
            _db.SaveChanges();
            return RedirectToAction("Index");





        }
    }
}