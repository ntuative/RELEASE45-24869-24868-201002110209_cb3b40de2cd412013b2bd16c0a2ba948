package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_62:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_207:Vector3d = null;
      
      private var var_1991:int = 0;
      
      private var var_2185:String = null;
      
      private var _category:int = 0;
      
      private var var_2186:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2186 = param3;
         var_62 = new Vector3d();
         var_62.assign(param4);
         var_207 = new Vector3d();
         var_207.assign(param5);
         var_1991 = param6;
         var_2185 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_62;
      }
      
      public function get typeId() : int
      {
         return var_1991;
      }
      
      public function get dir() : Vector3d
      {
         return var_207;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2185;
      }
      
      public function get operation() : String
      {
         return var_2186;
      }
      
      public function dispose() : void
      {
         var_62 = null;
         var_207 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
