package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_584:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_654:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_218:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1534:Point;
      
      private var var_1533:Rectangle;
      
      private var var_189:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1533 = param2;
         var_1534 = param3;
         var_189 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1533 != null)
         {
            return var_1533.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_189;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1534 != null)
         {
            return var_1534.clone();
         }
         return null;
      }
   }
}
