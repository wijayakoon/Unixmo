﻿using System;
using System.Collections.Generic;
using System.Linq;

namespace Neemo.ShoppingCart
{
    [Serializable]
    public class Cart
    {
        private readonly string _username;
        private readonly List<ICartItem> _items;
        
        public Cart(string username)
        {
            _username = username;
            _items = new List<ICartItem>();
        }

        public void AddItem(ICartItem cartItem)
        {
            this._items.Add(cartItem);
        }

        public decimal CalculateSubTotal()
        {
            return this._items.Sum(i => i.CalculatePrice());
        }
    }
}