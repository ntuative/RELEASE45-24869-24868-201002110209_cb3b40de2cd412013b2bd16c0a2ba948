package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_90:String = "RSPE_VOTE_RESULT";
      
      public static const const_110:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1294:int = 0;
      
      private var var_987:String = "";
      
      private var var_603:Array;
      
      private var var_998:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_998 = [];
         var_603 = [];
         super(param1,param2,param7,param8);
         var_987 = param3;
         var_998 = param4;
         var_603 = param5;
         if(var_603 == null)
         {
            var_603 = [];
         }
         var_1294 = param6;
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
