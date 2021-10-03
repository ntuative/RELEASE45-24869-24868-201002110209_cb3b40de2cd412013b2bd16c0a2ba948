package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1911:Number = 0;
      
      private var var_1836:Number = 0;
      
      private var var_1837:Number = 0;
      
      private var var_1910:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1836 = param1;
         var_1837 = param2;
         var_1911 = param3;
         var_1910 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1836;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1911;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1837;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1910;
      }
   }
}
