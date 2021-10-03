package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1757:int;
      
      private var var_1758:String;
      
      private var var_1628:int;
      
      private var _disposed:Boolean;
      
      private var var_1756:int;
      
      private var var_1627:String;
      
      private var var_1185:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1627 = param1.readString();
         var_1757 = param1.readInteger();
         var_1628 = param1.readInteger();
         var_1758 = param1.readString();
         var_1756 = param1.readInteger();
         var_1185 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1756;
      }
      
      public function get worldId() : int
      {
         return var_1628;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1627;
      }
      
      public function get unitPort() : int
      {
         return var_1757;
      }
      
      public function get castLibs() : String
      {
         return var_1758;
      }
      
      public function get nodeId() : int
      {
         return var_1185;
      }
   }
}
