package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_860:LegacyWallGeometry = null;
      
      private var var_582:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_583:TileHeightMap = null;
      
      private var var_2200:String = null;
      
      private var _roomId:int = 0;
      
      private var var_859:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_860 = new LegacyWallGeometry();
         var_859 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_583 != null)
         {
            var_583.dispose();
         }
         var_583 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2200 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_860;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_859;
      }
      
      public function dispose() : void
      {
         if(var_583 != null)
         {
            var_583.dispose();
            var_583 = null;
         }
         if(var_860 != null)
         {
            var_860.dispose();
            var_860 = null;
         }
         if(var_859 != null)
         {
            var_859.dispose();
            var_859 = null;
         }
         if(var_582 != null)
         {
            var_582.dispose();
            var_582 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_583;
      }
      
      public function get worldType() : String
      {
         return var_2200;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_582 != null)
         {
            var_582.dispose();
         }
         var_582 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_582;
      }
   }
}
