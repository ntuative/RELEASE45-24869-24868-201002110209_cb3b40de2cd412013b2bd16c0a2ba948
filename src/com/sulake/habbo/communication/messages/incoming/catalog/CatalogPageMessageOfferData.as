package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_829:Array;
      
      private var var_758:int;
      
      private var var_1141:String;
      
      private var _offerId:int;
      
      private var var_757:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1141 = param1.readString();
         var_758 = param1.readInteger();
         var_757 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_829 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_829.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_829;
      }
      
      public function get priceInCredits() : int
      {
         return var_758;
      }
      
      public function get localizationId() : String
      {
         return var_1141;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_757;
      }
   }
}
