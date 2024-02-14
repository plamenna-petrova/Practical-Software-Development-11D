using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Data;
using Data.Models;
using Business;

namespace ProductsWebApp.Controllers
{
    public class ProductsController : Controller
    {
        private ProductBusiness productBusiness = new ProductBusiness();

        public ProductsController()
        {

        }

        // GET: Products
        public IActionResult Index()
        {
            return View(productBusiness.GetAll());
        }

        // GET: Products/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var productDetails = productBusiness.GetById((int) id);

            if (productDetails == null)
            {
                return NotFound();
            }

            return View(productDetails);
        }

        // GET: Products/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,Price,Stock")] Product productToCreate)
        {
            if (ModelState.IsValid)
            {
                productBusiness.Add(productToCreate);
                return RedirectToAction(nameof(Index));
            }

            return View(productToCreate);
        }

        // GET: Products/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var productToEdit = productBusiness.GetById((int) id);

            if (productToEdit == null)
            {
                return NotFound();
            }

            return View(productToEdit);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,Price,Stock")] Product product)
        {
            if (id != product.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    productBusiness.Update(product);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!productBusiness.Exists(product.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }

                return RedirectToAction(nameof(Index));
            }

            return View(product);
        }

        // GET: Products/Delete/5
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var productDeletionDetails = productBusiness.GetById((int) id);

            if (productDeletionDetails == null)
            {
                return NotFound();
            }

            return View(productDeletionDetails);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            productBusiness.Delete(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
