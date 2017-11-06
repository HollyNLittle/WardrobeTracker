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
    public class EmbellishmentsController : Controller
    {
        private WardrobeTrackerEntities db = new WardrobeTrackerEntities();

        // GET: Embellishments
        public ActionResult Index()
        {
            var embellishments = db.Embellishments.Include(e => e.Color).Include(e => e.Description).Include(e => e.Occasion).Include(e => e.Season);
            return View(embellishments.ToList());
        }

        // GET: Embellishments/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Embellishment embellishment = db.Embellishments.Find(id);
            if (embellishment == null)
            {
                return HttpNotFound();
            }
            return View(embellishment);
        }

        // GET: Embellishments/Create
        public ActionResult Create()
        {
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name");
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name");
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name");
            return View();
        }

        // POST: Embellishments/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "EmbellishmentsID,DescriptionID,ColorID,SeasonID,OccasionID,Photo")] Embellishment embellishment)
        {
            if (ModelState.IsValid)
            {
                db.Embellishments.Add(embellishment);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", embellishment.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", embellishment.DescriptionID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", embellishment.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", embellishment.SeasonID);
            return View(embellishment);
        }

        // GET: Embellishments/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Embellishment embellishment = db.Embellishments.Find(id);
            if (embellishment == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", embellishment.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", embellishment.DescriptionID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", embellishment.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", embellishment.SeasonID);
            return View(embellishment);
        }

        // POST: Embellishments/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "EmbellishmentsID,DescriptionID,ColorID,SeasonID,OccasionID,Photo")] Embellishment embellishment)
        {
            if (ModelState.IsValid)
            {
                db.Entry(embellishment).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", embellishment.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", embellishment.DescriptionID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", embellishment.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", embellishment.SeasonID);
            return View(embellishment);
        }

        // GET: Embellishments/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Embellishment embellishment = db.Embellishments.Find(id);
            if (embellishment == null)
            {
                return HttpNotFound();
            }
            return View(embellishment);
        }

        // POST: Embellishments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Embellishment embellishment = db.Embellishments.Find(id);
            db.Embellishments.Remove(embellishment);
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
