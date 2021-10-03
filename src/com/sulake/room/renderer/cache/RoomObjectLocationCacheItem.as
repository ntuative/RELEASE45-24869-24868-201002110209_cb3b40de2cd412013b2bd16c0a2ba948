package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_2003:int = -1;
      
      private var var_1306:int = -1;
      
      private var var_663:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_663 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_2003;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_2003 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_663.assign(param1);
         var_663.x = Math.round(var_663.x);
         var_663.y = Math.round(var_663.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1306 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_663;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1306;
      }
   }
}
