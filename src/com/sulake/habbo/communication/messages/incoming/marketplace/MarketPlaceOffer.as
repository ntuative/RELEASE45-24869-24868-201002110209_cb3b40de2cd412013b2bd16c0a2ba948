package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1308:int;
      
      private var var_2125:int = -1;
      
      private var var_350:int;
      
      private var var_1743:int;
      
      private var var_1847:int;
      
      private var _offerId:int;
      
      private var var_1309:int;
      
      private var var_1820:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1820 = param2;
         var_1847 = param3;
         var_1308 = param4;
         var_350 = param5;
         var_2125 = param6;
         var_1743 = param7;
         var_1309 = param8;
      }
      
      public function get status() : int
      {
         return var_350;
      }
      
      public function get price() : int
      {
         return var_1308;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2125;
      }
      
      public function get offerCount() : int
      {
         return var_1309;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1847;
      }
      
      public function get averagePrice() : int
      {
         return var_1743;
      }
      
      public function get furniId() : int
      {
         return var_1820;
      }
   }
}
