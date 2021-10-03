package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_509:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_178:String;
      
      private var var_691:String;
      
      private var var_1529:String;
      
      private var var_140:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_140 = param2;
         var_1529 = param3;
         var_178 = param4;
         var_691 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1529;
      }
      
      public function get colorHex() : String
      {
         return var_691;
      }
      
      public function get text() : String
      {
         return var_178;
      }
      
      public function get objectId() : int
      {
         return var_140;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
