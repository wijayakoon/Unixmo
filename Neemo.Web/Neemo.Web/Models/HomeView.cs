﻿
using System.Collections.Generic;

namespace Neemo.Web.Models
{
    public class HomeView
    {
        public HomeView()
        {
            NewProducts = new List<ProductSummaryView>();
            NewWreckers = new List<ProviderSummaryView>();
            NewOthers = new List<ProviderSummaryView>();
            NewRepairers = new List<ProviderSummaryView>();
        }
        public List<ProductSummaryView> NewProducts { get; set; }
        public List<ProviderSummaryView> NewWreckers { get; set; }
        public List<ProviderSummaryView> NewOthers { get; set; }
        public List<ProviderSummaryView> NewRepairers { get; set; }
    }
}