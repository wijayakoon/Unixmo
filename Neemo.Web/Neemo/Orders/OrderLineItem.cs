﻿using System;
using Neemo.ShoppingCart;

namespace Neemo.Orders
{
    public class OrderLineItem
    {
        public static OrderLineItem FromShoppingCartItem(ICartItem cartItem)
        {
            // Creates a new one ( ready for the db )
            return new OrderLineItem
            {
                ProductId = cartItem.Id,
                Quantity = cartItem.Quantity,
                TaxTotal = cartItem.CalculateTotalTax(),
                TotalValue = cartItem.CalculateSubTotalWithoutTax(),
                UnitPrice = cartItem.PriceWithoutTax,
                CreatedDateTime = DateTime.Now
            };
        }
        public int? OrderLineItemId { get; private set; }

        public int? OrderId { get; private set; }

        // OrderDetail -> ProductID
        public int ProductId { get; private set; }

        // OrderDetail -> Quantity
        public int Quantity { get; private set; }

        // OrderDetail -> UnitPrice
        public decimal UnitPrice { get; private set; }

        // OrderDetail -> TotalValue
        public decimal TotalValue { get; private set; }

        // OrderDetail -> TaxTotal
        public decimal TaxTotal { get; private set; }

        public DateTime CreatedDateTime { get; set; }

    }
}