package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_108:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1771:int;
      
      private var var_366:int;
      
      private var var_681:RoomData;
      
      private var var_1810:int;
      
      private var _ownerName:String;
      
      private var var_1990:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_366 = param1.readInteger();
         var_1771 = param1.readInteger();
         var_1990 = param1.readBoolean();
         var_1810 = param1.readInteger();
         _ownerName = param1.readString();
         var_108 = new RoomData(param1);
         var_681 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1771;
      }
      
      public function get event() : RoomData
      {
         return var_681;
      }
      
      public function get room() : RoomData
      {
         return var_108;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_108 != null)
         {
            var_108.dispose();
            var_108 = null;
         }
         if(var_681 != null)
         {
            var_681.dispose();
            var_681 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_366;
      }
      
      public function get ownerId() : int
      {
         return var_1810;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1990;
      }
   }
}
