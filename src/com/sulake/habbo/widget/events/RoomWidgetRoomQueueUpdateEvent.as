package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_456:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_316:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_835:int;
      
      private var var_252:Boolean;
      
      private var var_1620:Boolean;
      
      private var var_1395:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_835 = param2;
         var_1620 = param3;
         var_252 = param4;
         var_1395 = param5;
      }
      
      public function get position() : int
      {
         return var_835;
      }
      
      public function get isActive() : Boolean
      {
         return var_252;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1395;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1620;
      }
   }
}
