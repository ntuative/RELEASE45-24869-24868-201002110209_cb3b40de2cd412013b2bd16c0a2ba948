package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1068:int = 31;
      
      private static const const_1067:int = 32;
      
      private static const const_475:int = 30;
      
      private static const const_748:int = 20;
      
      private static const const_474:int = 10;
       
      
      private var var_584:Boolean = false;
      
      private var var_216:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_216 = new Array();
         super();
         super.setAnimation(const_475);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_584 = true;
            var_216 = new Array();
            var_216.push(const_1068);
            var_216.push(const_1067);
            return;
         }
         if(param1 > 0 && param1 <= const_474)
         {
            if(var_584)
            {
               var_584 = false;
               var_216 = new Array();
               if(_direction == 2)
               {
                  var_216.push(const_748 + 5 - param1);
                  var_216.push(const_474 + 5 - param1);
               }
               else
               {
                  var_216.push(const_748 + param1);
                  var_216.push(const_474 + param1);
               }
               var_216.push(const_475);
               return;
            }
            super.setAnimation(const_475);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
