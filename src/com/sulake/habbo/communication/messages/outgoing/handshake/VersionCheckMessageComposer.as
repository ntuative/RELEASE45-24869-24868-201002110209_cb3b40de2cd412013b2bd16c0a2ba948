package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2099:String;
      
      private var var_1210:String;
      
      private var var_2100:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2100 = param1;
         var_1210 = param2;
         var_2099 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2100,var_1210,var_2099];
      }
      
      public function dispose() : void
      {
      }
   }
}
