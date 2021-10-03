package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_112:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1203:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_112);
         var_1203 = param1;
      }
      
      public function get vote() : int
      {
         return var_1203;
      }
   }
}
