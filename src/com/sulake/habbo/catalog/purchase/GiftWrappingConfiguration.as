package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_549:Array;
      
      private var var_1308:int;
      
      private var var_1409:Array;
      
      private var var_550:Array;
      
      private var var_1753:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1753 = _loc2_.isWrappingEnabled;
         var_1308 = _loc2_.wrappingPrice;
         var_1409 = _loc2_.stuffTypes;
         var_550 = _loc2_.boxTypes;
         var_549 = _loc2_.method_6;
      }
      
      public function get method_6() : Array
      {
         return var_549;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1409;
      }
      
      public function get price() : int
      {
         return var_1308;
      }
      
      public function get boxTypes() : Array
      {
         return var_550;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1753;
      }
   }
}
