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
    public class OutfitsController : Controller
    {
        private WardrobeTrackerEntities db = new WardrobeTrackerEntities();

        // GET: Outfits
        public ActionResult Index()
        {
            var outfits = db.Outfits.Include(o => o.Bottom).Include(o => o.Color).Include(o => o.Description).Include(o => o.Description1).Include(o => o.Dress).Include(o => o.Jewelry).Include(o => o.Legwear).Include(o => o.Legwear1).Include(o => o.Outfits1).Include(o => o.Outfit1).Include(o => o.Outfits11).Include(o => o.Outfit2).Include(o => o.Season).Include(o => o.Top);
            return View(outfits.ToList());
        }

        // GET: Outfits/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            return View(outfit);
        }

        // GET: Outfits/Create
        public ActionResult Create()
        {
            ViewBag.BottomsID = new SelectList(db.Bottoms, "BottomsID", "Name");
            ViewBag.SeasonID = new SelectList(db.Colors, "ColorID", "Name");
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name");
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name");
            ViewBag.DressesID = new SelectList(db.Dresses, "DressesID", "Name");
            ViewBag.FootwearID = new SelectList(db.Jewelries, "JewelryID", "Name");
            ViewBag.LegwearID = new SelectList(db.Legwears, "LegwearID", "Name");
            ViewBag.LegwearID = new SelectList(db.Legwears, "LegwearID", "Name");
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name");
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name");
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name");
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name");
            ViewBag.TopsID = new SelectList(db.Tops, "TopsID", "Name");
            return View();
        }

        // POST: Outfits/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OutfitsID,Name,TopsID,BottomsID,DressesID,LegwearID,FootwearID,AccessoriesID,JewelryID,CoatID,ColorID,SeasonID,DescriptionID,OccasionID,Photo")] Outfit outfit)
        {
            if (ModelState.IsValid)
            {
                db.Outfits.Add(outfit);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.BottomsID = new SelectList(db.Bottoms, "BottomsID", "Name", outfit.BottomsID);
            ViewBag.SeasonID = new SelectList(db.Colors, "ColorID", "Name", outfit.SeasonID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", outfit.DescriptionID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", outfit.DescriptionID);
            ViewBag.DressesID = new SelectList(db.Dresses, "DressesID", "Name", outfit.DressesID);
            ViewBag.FootwearID = new SelectList(db.Jewelries, "JewelryID", "Name", outfit.FootwearID);
            ViewBag.LegwearID = new SelectList(db.Legwears, "LegwearID", "Name", outfit.LegwearID);
            ViewBag.LegwearID = new SelectList(db.Legwears, "LegwearID", "Name", outfit.LegwearID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", outfit.SeasonID);
            ViewBag.TopsID = new SelectList(db.Tops, "TopsID", "Name", outfit.TopsID);
            return View(outfit);
        }

        // GET: Outfits/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            ViewBag.BottomsID = new SelectList(db.Bottoms, "BottomsID", "Name", outfit.BottomsID);
            ViewBag.SeasonID = new SelectList(db.Colors, "ColorID", "Name", outfit.SeasonID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", outfit.DescriptionID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", outfit.DescriptionID);
            ViewBag.DressesID = new SelectList(db.Dresses, "DressesID", "Name", outfit.DressesID);
            ViewBag.FootwearID = new SelectList(db.Jewelries, "JewelryID", "Name", outfit.FootwearID);
            ViewBag.LegwearID = new SelectList(db.Legwears, "LegwearID", "Name", outfit.LegwearID);
            ViewBag.LegwearID = new SelectList(db.Legwears, "LegwearID", "Name", outfit.LegwearID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", outfit.SeasonID);
            ViewBag.TopsID = new SelectList(db.Tops, "TopsID", "Name", outfit.TopsID);
            return View(outfit);
        }

        // POST: Outfits/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OutfitsID,Name,TopsID,BottomsID,DressesID,LegwearID,FootwearID,AccessoriesID,JewelryID,CoatID,ColorID,SeasonID,DescriptionID,OccasionID,Photo")] Outfit outfit)
        {
            if (ModelState.IsValid)
            {
                db.Entry(outfit).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BottomsID = new SelectList(db.Bottoms, "BottomsID", "Name", outfit.BottomsID);
            ViewBag.SeasonID = new SelectList(db.Colors, "ColorID", "Name", outfit.SeasonID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", outfit.DescriptionID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", outfit.DescriptionID);
            ViewBag.DressesID = new SelectList(db.Dresses, "DressesID", "Name", outfit.DressesID);
            ViewBag.FootwearID = new SelectList(db.Jewelries, "JewelryID", "Name", outfit.FootwearID);
            ViewBag.LegwearID = new SelectList(db.Legwears, "LegwearID", "Name", outfit.LegwearID);
            ViewBag.LegwearID = new SelectList(db.Legwears, "LegwearID", "Name", outfit.LegwearID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.OutfitsID = new SelectList(db.Outfits, "OutfitsID", "Name", outfit.OutfitsID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", outfit.SeasonID);
            ViewBag.TopsID = new SelectList(db.Tops, "TopsID", "Name", outfit.TopsID);
            return View(outfit);
        }

        // GET: Outfits/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            return View(outfit);
        }

        // POST: Outfits/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Outfit outfit = db.Outfits.Find(id);
            db.Outfits.Remove(outfit);
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
