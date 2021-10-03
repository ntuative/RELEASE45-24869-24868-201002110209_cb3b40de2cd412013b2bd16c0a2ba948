package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_706:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2110:BitmapData;
      
      private var var_2078:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_706,param3,param4);
         var_2078 = param1;
         var_2110 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_2110;
      }
      
      public function get badgeID() : String
      {
         return var_2078;
      }
   }
}
