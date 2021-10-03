package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_90:String = "RWPUE_VOTE_RESULT";
      
      public static const const_110:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1294:int;
      
      private var var_987:String;
      
      private var var_603:Array;
      
      private var var_998:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_987 = param2;
         var_998 = param3;
         var_603 = param4;
         if(var_603 == null)
         {
            var_603 = [];
         }
         var_1294 = param5;
      }
      
      public function get votes() : Array
      {
         return var_603.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1294;
      }
      
      public function get question() : String
      {
         return var_987;
      }
      
      public function get choices() : Array
      {
         return var_998.slice();
      }
   }
}
