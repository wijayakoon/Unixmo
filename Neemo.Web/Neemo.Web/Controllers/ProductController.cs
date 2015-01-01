﻿namespace Neemo.Web.Controllers
{
    using System.Web.Mvc;
    using AutoMapper;
    using Store;
    using Infrastructure;

    public class ProductController : MagentoController
    {
        private readonly IProductService _productService;

        public ProductController(IProductService productService)
        {
            _productService = productService;
        }

        public ActionResult Details(int id)
        {
            // Todo - this value should not be hardcoded
            var productId = 1;
            //var productId = id;

            // Fetch the full product details
            var productView = Mapper.Map<Store.Product, Models.ProductDetailView>(_productService.GetProductById(productId));

            return View(productView);
        }
    }
}