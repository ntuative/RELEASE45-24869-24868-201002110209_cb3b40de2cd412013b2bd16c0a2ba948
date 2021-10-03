package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_324:Number = 0.5;
      
      private static const const_734:int = 3;
      
      private static const const_1049:Number = 1;
       
      
      private var var_1857:Boolean = false;
      
      private var var_1863:Boolean = false;
      
      private var var_976:int = 0;
      
      private var var_245:Vector3d = null;
      
      private var var_1860:int = 0;
      
      private var var_1861:int = 0;
      
      private var var_1855:Boolean = false;
      
      private var var_1862:int = -2;
      
      private var var_1854:Boolean = false;
      
      private var var_1858:int = 0;
      
      private var var_1856:int = -1;
      
      private var var_382:Vector3d = null;
      
      private var var_1859:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1860;
      }
      
      public function get targetId() : int
      {
         return var_1856;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1858 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1860 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1857 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1856 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1863 = param1;
      }
      
      public function dispose() : void
      {
         var_382 = null;
         var_245 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_382 == null)
         {
            var_382 = new Vector3d();
         }
         var_382.assign(param1);
         var_976 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1862;
      }
      
      public function get screenHt() : int
      {
         return var_1859;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1861 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_245;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1859 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1858;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1857;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1863;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_382 != null && var_245 != null)
         {
            ++var_976;
            _loc2_ = Vector3d.dif(var_382,var_245);
            if(_loc2_.length <= const_324)
            {
               var_245 = var_382;
               var_382 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_324 * (const_734 + 1))
               {
                  _loc2_.mul(const_324);
               }
               else if(var_976 <= const_734)
               {
                  _loc2_.mul(const_324);
               }
               else
               {
                  _loc2_.mul(const_1049);
               }
               var_245 = Vector3d.sum(var_245,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1855 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1861;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1854 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1862 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_245 != null)
         {
            return;
         }
         var_245 = new Vector3d();
         var_245.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1855;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1854;
      }
   }
}
