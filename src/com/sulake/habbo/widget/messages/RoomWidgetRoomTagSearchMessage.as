package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_508:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1591:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_508);
         var_1591 = param1;
      }
      
      public function get tag() : String
      {
         return var_1591;
      }
   }
}
