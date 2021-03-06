﻿using System;
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
    public class TopsController : Controller
    {
        private WardrobeTrackerEntities db = new WardrobeTrackerEntities();

        // GET: Tops
        public ActionResult Index()
        {
            var tops = db.Tops.Include(t => t.Color).Include(t => t.Description).Include(t => t.Occasion).Include(t => t.Season);
            return View(tops.ToList());
        }

        // GET: Tops/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Top top = db.Tops.Find(id);
            if (top == null)
            {
                return HttpNotFound();
            }
            return View(top);
        }

        // GET: Tops/Create
        public ActionResult Create()
        {
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name");
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name");
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name");
            return View();
        }

        // POST: Tops/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TopsID,Name,DescriptionID,ColorID,SeasonID,OccasionID,Photo")] Top top)
        {
            if (ModelState.IsValid)
            {
                db.Tops.Add(top);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", top.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", top.DescriptionID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", top.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", top.SeasonID);
            return View(top);
        }

        // GET: Tops/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Top top = db.Tops.Find(id);
            if (top == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", top.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", top.DescriptionID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", top.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", top.SeasonID);
            return View(top);
        }

        // POST: Tops/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TopsID,Name,DescriptionID,ColorID,SeasonID,OccasionID,Photo")] Top top)
        {
            if (ModelState.IsValid)
            {
                db.Entry(top).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Name", top.ColorID);
            ViewBag.DescriptionID = new SelectList(db.Descriptions, "DescriptionID", "Name", top.DescriptionID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Name", top.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Name", top.SeasonID);
            return View(top);
        }

        // GET: Tops/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Top top = db.Tops.Find(id);
            if (top == null)
            {
                return HttpNotFound();
            }
            return View(top);
        }

        // POST: Tops/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Top top = db.Tops.Find(id);
            db.Tops.Remove(top);
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
