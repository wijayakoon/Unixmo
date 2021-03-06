﻿namespace Neemo.Web.Infrastructure
{
    using Microsoft.Practices.Unity;
    using Neemo.ShoppingCart;
    using Store;
    using System.Web.Mvc;

    public class MagentoController : Controller
    {
        [Dependency]
        public ICategoryService CategoryService { get; set; }

        [Dependency]
        public ICartContext CartContext { get; set; }

        [Dependency]
        public ISysConfig Config { get; set; }
        
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (CartContext.HasItemsInCart() && Request.IsAuthenticated)
            {
                ViewBag.CheckoutUrl = Url.Checkout();
            }
            else if (CartContext.HasItemsInCart() && !Request.IsAuthenticated)
            {
                ViewBag.CheckoutUrl = Url.Login();
            }
            else if (!CartContext.HasItemsInCart())
            {
                ViewBag.CheckoutUrl = Url.MyCart();
            }

            ViewBag.CompanyName = Config.CompanyName;
        }
    }
}