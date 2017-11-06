using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeTracker.Models;

namespace WardrobeTracker.Controllers
{
    public class PantaloonsController : Controller
    {
        private WardrobeTrackerEntities db = new WardrobeTrackerEntities();

        // GET: Pantaloons
        public ActionResult Index()
        {
            var pantaloons = db.Pantaloons.Include(p => p.Color).Include(p => p.Description).Include(p => p.Occasion).Include(p => p.Season);
            return View(pantaloons.ToList());
        }

        // GET: Pantaloons/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pantaloon pantaloon = db.Pantaloons.Find(id);
            if (pantaloon == null)
            {
                return HttpNotFound();
            }
            return View(pantaloon);
        }

        // GET: Pantaloons/Create
        public ActionResult Create()
        {
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name");
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name");
            ViewBag.OccassionID = new SelectList(db.Occasions, "OccasionID", "Name");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name");
            return View();
        }

        // POST: Pantaloons/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PantaloonsID,DescriptionID,ColorID,SeasonID,OccassionID,Photo")] Pantaloon pantaloon)
        {
            if (ModelState.IsValid)
            {
                db.Pantaloons.Add(pantaloon);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", pantaloon.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", pantaloon.DescriptionID);
            ViewBag.OccassionID = new SelectList(db.Occasions, "OccasionID", "Name", pantaloon.OccassionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", pantaloon.SeasonID);
            return View(pantaloon);
        }

        // GET: Pantaloons/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pantaloon pantaloon = db.Pantaloons.Find(id);
            if (pantaloon == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", pantaloon.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", pantaloon.DescriptionID);
            ViewBag.OccassionID = new SelectList(db.Occasions, "OccasionID", "Name", pantaloon.OccassionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", pantaloon.SeasonID);
            return View(pantaloon);
        }

        // POST: Pantaloons/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PantaloonsID,DescriptionID,ColorID,SeasonID,OccassionID,Photo")] Pantaloon pantaloon)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pantaloon).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", pantaloon.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", pantaloon.DescriptionID);
            ViewBag.OccassionID = new SelectList(db.Occasions, "OccasionID", "Name", pantaloon.OccassionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", pantaloon.SeasonID);
            return View(pantaloon);
        }

        // GET: Pantaloons/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pantaloon pantaloon = db.Pantaloons.Find(id);
            if (pantaloon == null)
            {
                return HttpNotFound();
            }
            return View(pantaloon);
        }

        // POST: Pantaloons/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Pantaloon pantaloon = db.Pantaloons.Find(id);
            db.Pantaloons.Remove(pantaloon);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
