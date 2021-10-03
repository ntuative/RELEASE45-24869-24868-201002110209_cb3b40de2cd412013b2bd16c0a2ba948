package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1067:int = -1;
      
      private static const const_748:int = 20;
      
      private static const const_474:int = 9;
       
      
      private var var_584:Boolean = false;
      
      private var var_216:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_216 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_584 = true;
            var_216 = new Array();
            var_216.push(const_1067);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_584)
            {
               var_584 = false;
               var_216 = new Array();
               var_216.push(const_748);
               var_216.push(const_474 + param1);
               var_216.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
