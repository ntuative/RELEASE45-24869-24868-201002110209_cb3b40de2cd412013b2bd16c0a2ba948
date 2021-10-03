package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_601:String;
      
      private var var_1341:Array;
      
      private var var_1340:Boolean;
      
      private var _roomId:int;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         var_1341 = new Array();
         super();
         var_1340 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_601 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1341.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + var_1340 + ", " + _roomId + ", " + var_601 + ", " + chatlog.length);
      }
      
      public function get isPublic() : Boolean
      {
         return var_1340;
      }
      
      public function get roomName() : String
      {
         return var_601;
      }
      
      public function get chatlog() : Array
      {
         return var_1341;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
