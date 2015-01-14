﻿using System;
using System.Collections.Generic;
using System.Linq;
using Neemo.Shipping;

namespace Neemo.ShoppingCart
{
    [Serializable]
    public class Cart
    {
        private readonly List<ICartItem> _items;
        public ShippingCost ShippingCost { get; private set; }
        public PersonalDetails ShippingDetails { get; private set; }
        public PersonalDetails BillingDetails { get; private set; }

        public Cart()
        {
            _items = new List<ICartItem>();
        }

        public void AddItem(ICartItem cartItem)
        {
            this._items.Add(cartItem);
        }

        public void Checkout()
        {
            // Clear the items
            this._items.Clear();
        }

        public void RemoveItem(string lineItemId)
        {
            _items.RemoveAll(p => p.LineItemId == lineItemId);
        }

        public ICartItem[] GetItems()
        {
            return _items.ToArray();
        }

        public int? GetTotalQuantityForProduct(int id, string excludeLineItemId)
        {
            return _items.Where(i => i.LineItemId != excludeLineItemId).Sum(i => i.Quantity);
        }

        public void UpdateQuantity(string lineItemId, int quantity)
        {
            var item = _items.FirstOrDefault(i => i.LineItemId == lineItemId);
            if (item == null)
                return;
            item.UpdateQuantity(quantity);
        }

        /// <summary>
        /// Sets the shipping cost for the shopping cart
        /// </summary>
        public void SetShippingCost(ShippingCost shipping)
        {
            this.ShippingCost = shipping;
        }

        /// <summary>
        /// Sets the billing details for the shopping cart
        /// </summary>
        public void SetBillingDetails(PersonalDetails billingDetails)
        {
            this.BillingDetails = billingDetails;
        }

        /// <summary>
        /// Sets the shipping details for the shopping cart
        /// </summary>
        /// <param name="shippingDetails"></param>
        public void SetShippingDetails(PersonalDetails shippingDetails)
        {
            this.ShippingDetails = shippingDetails;
        }
        
        /// <summary>
        /// Returns the sum of all items excluding shipping and tax
        /// </summary>
        public decimal CalculateItemTotal()
        {
            return this._items.Sum(i => i.CalculatePrice());
        }

        /// <summary>
        /// Returns the sub total for the entire order including tax and shipping
        /// </summary>
        public decimal CalculateSubTotal()
        {
            // Add all the product items (taxes included)
            // Add the shipping
            return CalculateItemTotal() + ShippingCost;
        }
    }
}
