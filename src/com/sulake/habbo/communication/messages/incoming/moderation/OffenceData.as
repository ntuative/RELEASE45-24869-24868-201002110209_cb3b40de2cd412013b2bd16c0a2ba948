package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OffenceData implements INamed
   {
       
      
      private var var_1497:String;
      
      private var _name:String;
      
      public function OffenceData(param1:IMessageDataWrapper)
      {
         super();
         _name = param1.readString();
         var_1497 = param1.readString();
         Logger.log("READ OFF: " + _name + ", " + var_1497);
      }
      
      public function get msg() : String
      {
         return var_1497;
      }
      
      public function get name() : String
      {
         return _name;
      }
   }
}
