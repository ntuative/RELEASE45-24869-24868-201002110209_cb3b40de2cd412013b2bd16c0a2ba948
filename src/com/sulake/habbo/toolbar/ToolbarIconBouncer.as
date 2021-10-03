package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1825:Number;
      
      private var var_542:Number = 0;
      
      private var var_1824:Number;
      
      private var var_541:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1825 = param1;
         var_1824 = param2;
      }
      
      public function update() : void
      {
         var_541 += var_1824;
         var_542 += var_541;
         if(var_542 > 0)
         {
            var_542 = 0;
            var_541 = var_1825 * -1 * var_541;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_541 = param1;
         var_542 = 0;
      }
      
      public function get location() : Number
      {
         return var_542;
      }
   }
}
