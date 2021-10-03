package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_986:int;
      
      private var var_1192:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_986 = param1;
         var_1192 = param2;
      }
      
      public function get itemType() : int
      {
         return var_986;
      }
      
      public function get itemName() : String
      {
         return var_1192;
      }
   }
}
