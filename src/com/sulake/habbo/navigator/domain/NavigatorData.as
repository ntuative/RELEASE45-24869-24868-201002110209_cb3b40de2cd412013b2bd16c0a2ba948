package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1410:int = 10;
       
      
      private var var_1495:NavigatorSettingsMessageParser;
      
      private var var_1252:int;
      
      private var var_2029:Boolean;
      
      private var var_2030:int;
      
      private var var_824:Dictionary;
      
      private var var_2286:int;
      
      private var var_2028:int;
      
      private var var_1699:int;
      
      private var var_316:Array;
      
      private var var_2027:int;
      
      private var var_568:PublicRoomShortData;
      
      private var var_397:RoomEventData;
      
      private var var_129:MsgWithRequestId;
      
      private var var_1976:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2026:Boolean;
      
      private var var_188:GuestRoomData;
      
      private var var_671:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_316 = new Array();
         var_824 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2030;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2026;
      }
      
      public function startLoading() : void
      {
         this.var_671 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2026 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_397 != null)
         {
            var_397.dispose();
         }
         var_397 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_129 != null && var_129 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_129 != null && var_129 as GuestRoomSearchResultData != null;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_671 = false;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_129 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_188;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_568 = null;
         var_188 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_568 = param1.publicSpace;
            var_397 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_397 != null)
         {
            var_397.dispose();
            var_397 = null;
         }
         if(var_568 != null)
         {
            var_568.dispose();
            var_568 = null;
         }
         if(var_188 != null)
         {
            var_188.dispose();
            var_188 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1495;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_671 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_316.length > param1)
         {
            return var_316[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2286 = param1.limit;
         this.var_1252 = param1.favouriteRoomIds.length;
         this.var_824 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_824[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_129 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_316;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_568;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1699 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2029;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_671 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_316.length)
         {
            if((var_316[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_188 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_671;
      }
      
      public function set categories(param1:Array) : void
      {
         var_316 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_2028;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2027;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1495 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_129 == null)
         {
            return;
         }
         var_129.dispose();
         var_129 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_397;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_824[param1] = !!param2 ? "yes" : null;
         var_1252 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_129 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1699;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_129 != null && var_129 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2029 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2028 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1976 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_188 != null)
         {
            var_188.dispose();
         }
         var_188 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_316)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_188 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1495.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1252 >= var_2286;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2027 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1976;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_188 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2030 = param1;
      }
   }
}
