package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class ClubGiftInfoParser implements IMessageParser
   {
       
      
      private var var_908:int;
      
      private var var_1622:int;
      
      private var var_522:Array;
      
      public function ClubGiftInfoParser()
      {
         super();
      }
      
      public function get giftsAvailable() : int
      {
         return var_908;
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1622;
      }
      
      public function flush() : Boolean
      {
         var_522 = [];
         return true;
      }
      
      public function get offers() : Array
      {
         return var_522;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1622 = param1.readInteger();
         var_908 = param1.readInteger();
         var_522 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_522.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         return true;
      }
   }
}
