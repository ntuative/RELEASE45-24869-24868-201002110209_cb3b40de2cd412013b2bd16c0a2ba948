package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1894:int;
      
      private var var_1444:int;
      
      private var var_1893:int;
      
      private var var_1892:int;
      
      private var var_1891:int;
      
      private var var_1443:int;
      
      private var var_1687:int;
      
      private var var_1753:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1894;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1444;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1687;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1892;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1891;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1443;
      }
      
      public function get commission() : int
      {
         return var_1893;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1753 = param1.readBoolean();
         var_1893 = param1.readInteger();
         var_1444 = param1.readInteger();
         var_1443 = param1.readInteger();
         var_1892 = param1.readInteger();
         var_1894 = param1.readInteger();
         var_1891 = param1.readInteger();
         var_1687 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1753;
      }
   }
}
