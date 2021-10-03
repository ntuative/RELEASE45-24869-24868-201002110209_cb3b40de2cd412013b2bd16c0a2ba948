package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_601:String;
      
      private var var_1610:int;
      
      private var var_1340:Boolean;
      
      private var _roomId:int;
      
      private var var_1611:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1340 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_601 = param1.readString();
         var_1611 = param1.readInteger();
         var_1610 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1340;
      }
      
      public function get roomName() : String
      {
         return var_601;
      }
      
      public function get enterMinute() : int
      {
         return var_1610;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1611;
      }
   }
}
