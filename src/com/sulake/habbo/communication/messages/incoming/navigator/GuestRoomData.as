package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1771:int;
      
      private var var_1774:String;
      
      private var var_1775:int;
      
      private var var_1768:int;
      
      private var var_681:Boolean;
      
      private var var_1769:Boolean;
      
      private var var_366:int;
      
      private var var_1092:String;
      
      private var var_1772:int;
      
      private var var_1093:int;
      
      private var _ownerName:String;
      
      private var var_601:String;
      
      private var var_1776:int;
      
      private var var_1773:RoomThumbnailData;
      
      private var var_1770:Boolean;
      
      private var var_591:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_591 = new Array();
         super();
         var_366 = param1.readInteger();
         var_681 = param1.readBoolean();
         var_601 = param1.readString();
         _ownerName = param1.readString();
         var_1772 = param1.readInteger();
         var_1771 = param1.readInteger();
         var_1776 = param1.readInteger();
         var_1092 = param1.readString();
         var_1775 = param1.readInteger();
         var_1770 = param1.readBoolean();
         var_1768 = param1.readInteger();
         var_1093 = param1.readInteger();
         var_1774 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_591.push(_loc4_);
            _loc3_++;
         }
         var_1773 = new RoomThumbnailData(param1);
         var_1769 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1776;
      }
      
      public function get roomName() : String
      {
         return var_601;
      }
      
      public function get userCount() : int
      {
         return var_1771;
      }
      
      public function get score() : int
      {
         return var_1768;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1774;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1770;
      }
      
      public function get tags() : Array
      {
         return var_591;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1769;
      }
      
      public function get event() : Boolean
      {
         return var_681;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_591 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1093;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1775;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1773;
      }
      
      public function get doorMode() : int
      {
         return var_1772;
      }
      
      public function get flatId() : int
      {
         return var_366;
      }
      
      public function get description() : String
      {
         return var_1092;
      }
   }
}
