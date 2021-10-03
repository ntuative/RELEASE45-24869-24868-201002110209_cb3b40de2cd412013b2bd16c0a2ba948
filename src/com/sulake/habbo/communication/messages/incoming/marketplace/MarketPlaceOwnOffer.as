package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1416:int = 2;
      
      public static const const_1510:int = 1;
      
      public static const const_1498:int = 0;
       
      
      private var var_1308:int;
      
      private var var_350:int;
      
      private var var_2340:int;
      
      private var _offerId:int;
      
      private var var_1847:int;
      
      private var var_1820:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1820 = param2;
         var_1847 = param3;
         var_1308 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1820;
      }
      
      public function get furniType() : int
      {
         return var_1847;
      }
      
      public function get price() : int
      {
         return var_1308;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
