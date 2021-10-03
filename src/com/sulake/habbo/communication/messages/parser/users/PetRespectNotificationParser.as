package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1682:int;
      
      private var var_1122:PetData;
      
      private var var_1683:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1682;
      }
      
      public function get petData() : PetData
      {
         return var_1122;
      }
      
      public function flush() : Boolean
      {
         var_1122 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1683;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1682 = param1.readInteger();
         var_1683 = param1.readInteger();
         var_1122 = new PetData(param1);
         return true;
      }
   }
}
