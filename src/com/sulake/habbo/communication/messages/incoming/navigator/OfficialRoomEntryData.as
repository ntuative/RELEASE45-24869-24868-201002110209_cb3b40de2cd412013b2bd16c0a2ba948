package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1285:int = 4;
      
      public static const const_573:int = 3;
      
      public static const const_513:int = 2;
      
      public static const const_955:int = 1;
       
      
      private var var_1898:String;
      
      private var _disposed:Boolean;
      
      private var var_1771:int;
      
      private var var_1896:Boolean;
      
      private var var_832:String;
      
      private var var_794:PublicRoomData;
      
      private var var_1897:int;
      
      private var _index:int;
      
      private var var_1900:String;
      
      private var _type:int;
      
      private var var_1591:String;
      
      private var var_793:GuestRoomData;
      
      private var var_1899:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1898 = param1.readString();
         var_1899 = param1.readString();
         var_1896 = param1.readInteger() == 1;
         var_1900 = param1.readString();
         var_832 = param1.readString();
         var_1897 = param1.readInteger();
         var_1771 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_955)
         {
            var_1591 = param1.readString();
         }
         else if(_type == const_573)
         {
            var_794 = new PublicRoomData(param1);
         }
         else if(_type == const_513)
         {
            var_793 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1897;
      }
      
      public function get popupCaption() : String
      {
         return var_1898;
      }
      
      public function get userCount() : int
      {
         return var_1771;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1896;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_955)
         {
            return 0;
         }
         if(this.type == const_513)
         {
            return this.var_793.maxUserCount;
         }
         if(this.type == const_573)
         {
            return this.var_794.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1899;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_793 != null)
         {
            this.var_793.dispose();
            this.var_793 = null;
         }
         if(this.var_794 != null)
         {
            this.var_794.dispose();
            this.var_794 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_793;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1900;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_794;
      }
      
      public function get picRef() : String
      {
         return var_832;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1591;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
