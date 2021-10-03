package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_184:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2213:Boolean = false;
      
      private var var_2211:int = 0;
      
      private var var_2212:int = 0;
      
      private var var_2210:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_184,param5,param6);
         var_2210 = param1;
         var_2212 = param2;
         var_2211 = param3;
         var_2213 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2211;
      }
      
      public function get periodsLeft() : int
      {
         return var_2212;
      }
      
      public function get daysLeft() : int
      {
         return var_2210;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2213;
      }
   }
}
