package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1075:int = 1;
      
      private static const const_1067:int = 3;
      
      private static const const_1074:int = 2;
      
      private static const const_1076:int = 15;
       
      
      private var var_826:int;
      
      private var var_216:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_216 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1074)
         {
            var_216 = new Array();
            var_216.push(const_1075);
            var_826 = const_1076;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_826 > 0)
         {
            --var_826;
         }
         if(var_826 == 0)
         {
            if(false)
            {
               super.setAnimation(var_216.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
