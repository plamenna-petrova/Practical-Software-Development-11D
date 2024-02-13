using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProductsWebApp.Business;
using ProductsWebApp.Data;
using ProductsWebApp.Data.Models;

namespace ProductsWebApp.Controllers
{
    [Authorize]
    public class ProductsController : Controller
    {
        private readonly IProductsService _productsService;

        public ProductsController(IProductsService productsService)
        {
            _productsService = productsService;
        }

        // GET: Products
        public async Task<IActionResult> Index()
        {
              return _productsService.Any() ? 
                          View(await _productsService.GetAll()) :
                          Problem("Entity set 'ApplicationDbContext.Products'  is null.");
        }

        // GET: Products/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || !_productsService.Any())
            {
                return NotFound();
            }

            var productDetails = await _productsService.GetById((int) id);

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
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Name,Price,Stock")] Product productToCreate)
        {
            if (ModelState.IsValid)
            {
                await _productsService.Add(productToCreate);

                return RedirectToAction(nameof(Index));
            }

            return View(productToCreate);
        }

        // GET: Products/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || !_productsService.Any())
            {
                return NotFound();
            }

            var productToEdit = await _productsService.GetById((int) id);

            if (productToEdit == null)
            {
                return NotFound();
            }

            return View(productToEdit);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id, Name,Price,Stock")] Product productToUpdate)
        {
            if (id != productToUpdate.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    await _productsService.Update(productToUpdate);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!_productsService.Exists(productToUpdate.Id))
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
            return View(productToUpdate);
        }

        // GET: Products/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || !_productsService.Any())
            {
                return NotFound();
            }

            var productToDelete = await _productsService.GetById((int) id);

            if (productToDelete == null)
            {
                return NotFound();
            }

            return View(productToDelete);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (!_productsService.Any())
            {
                return Problem("Entity set 'ApplicationDbContext.Products'  is null.");
            }

            var productToConfirmDeletion = await _productsService.GetById(id);

            if (productToConfirmDeletion != null)
            {
                await _productsService.Delete(productToConfirmDeletion);
            }

            return RedirectToAction(nameof(Index));
        }
    }
}
