package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1538:Array;
      
      private var var_1743:int;
      
      private var var_1745:int;
      
      private var var_1742:int;
      
      private var var_1744:int;
      
      private var _dayOffsets:Array;
      
      private var var_1746:int;
      
      private var var_1537:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1538;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1538 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1745;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1537 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1743 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1742;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1744;
      }
      
      public function get offerCount() : int
      {
         return var_1746;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1746 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1537;
      }
      
      public function get averagePrice() : int
      {
         return var_1743;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1744 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1742 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1745 = param1;
      }
   }
}
