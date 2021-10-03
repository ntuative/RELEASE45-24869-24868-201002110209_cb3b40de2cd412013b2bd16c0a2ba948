package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_966:PetData;
      
      private var var_1435:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1435 = param1.readBoolean();
         var_966 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1435 + ", " + var_966.id + ", " + var_966.name + ", " + pet.figure + ", " + var_966.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1435;
      }
      
      public function get pet() : PetData
      {
         return var_966;
      }
   }
}
