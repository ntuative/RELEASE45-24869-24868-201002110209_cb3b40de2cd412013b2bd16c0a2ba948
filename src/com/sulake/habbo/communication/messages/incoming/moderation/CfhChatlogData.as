package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_954:int;
      
      private var var_2209:int;
      
      private var var_1550:int;
      
      private var var_108:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1550 = param1.readInteger();
         var_2209 = param1.readInteger();
         var_954 = param1.readInteger();
         var_108 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1550);
      }
      
      public function get reportedUserId() : int
      {
         return var_954;
      }
      
      public function get callerUserId() : int
      {
         return var_2209;
      }
      
      public function get callId() : int
      {
         return var_1550;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_108;
      }
   }
}
