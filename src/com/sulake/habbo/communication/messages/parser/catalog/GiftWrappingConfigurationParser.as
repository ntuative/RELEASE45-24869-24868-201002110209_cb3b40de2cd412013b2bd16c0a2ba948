package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_1409:Array;
      
      private var var_1799:Boolean;
      
      private var var_549:Array;
      
      private var var_1800:int;
      
      private var var_550:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         var_1409 = [];
         var_550 = [];
         var_549 = [];
         var_1799 = param1.readBoolean();
         var_1800 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_1409.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_550.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_549.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
      
      public function get method_6() : Array
      {
         return var_549;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1409;
      }
      
      public function get wrappingPrice() : int
      {
         return var_1800;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boxTypes() : Array
      {
         return var_550;
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return var_1799;
      }
   }
}
