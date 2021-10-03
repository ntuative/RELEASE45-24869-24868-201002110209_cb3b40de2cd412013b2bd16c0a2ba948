package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1459:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1530:String = "ROE_MOUSE_ENTER";
      
      public static const const_396:String = "ROE_MOUSE_MOVE";
      
      public static const const_1496:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_199:String = "ROE_MOUSE_CLICK";
      
      public static const const_369:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1785:Boolean;
      
      private var var_1790:Boolean;
      
      private var var_1787:Boolean;
      
      private var var_1791:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1787 = param4;
         var_1791 = param5;
         var_1785 = param6;
         var_1790 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1790;
      }
      
      public function get altKey() : Boolean
      {
         return var_1787;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1791;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1785;
      }
   }
}
