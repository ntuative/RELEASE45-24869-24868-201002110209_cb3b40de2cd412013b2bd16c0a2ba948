package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2039:Number = 1;
      
      private var var_189:Number = 1;
      
      private var var_2200:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2200 = param1;
         var_189 = param2;
         var_2039 = param3;
      }
      
      public function get scale() : Number
      {
         return var_189;
      }
      
      public function get heightScale() : Number
      {
         return var_2039;
      }
   }
}
