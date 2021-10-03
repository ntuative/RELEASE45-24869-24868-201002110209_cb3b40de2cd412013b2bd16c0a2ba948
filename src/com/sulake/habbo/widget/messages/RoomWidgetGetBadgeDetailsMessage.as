package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_491:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_993:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_491);
         var_993 = param1;
      }
      
      public function get groupId() : int
      {
         return var_993;
      }
   }
}
