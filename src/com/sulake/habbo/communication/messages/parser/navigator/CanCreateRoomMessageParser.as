package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_1419:int = 0;
      
      public static const const_1576:int = 1;
       
      
      private var var_2271:int;
      
      private var var_1160:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function get roomLimit() : int
      {
         return var_2271;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1160 = param1.readInteger();
         this.var_2271 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get resultCode() : int
      {
         return var_1160;
      }
   }
}
