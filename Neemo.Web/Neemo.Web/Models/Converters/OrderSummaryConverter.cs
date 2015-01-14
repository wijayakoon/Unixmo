namespace Neemo.Web.Models
{
    using AutoMapper;
    using Shipping;
    using ShoppingCart;
    using Store;
    using System.Linq;

    public class OrderSummaryConverter : ITypeConverter<Cart, OrderSummaryView>
    {
        public OrderSummaryView Convert(ResolutionContext context)
        {
            var cart = (Cart)context.SourceValue;

            return new OrderSummaryView
            {
                SubTotal = cart.CalculateSubTotal(),
                ItemTotal = cart.CalculateItemTotal(),
                CartItems = cart.GetItems().OfType<ProductCartItem>().Select(Mapper.Map<ProductCartItem, CartItemView>).ToList(),
                ShippingCost = Mapper.Map<ShippingCost, ShippingCostView>(cart.ShippingCost),
                Tax = Mapper.Map<Tax.TaxCost, TaxCostView>(cart.CalculateTax())
            };
        }
    }
}