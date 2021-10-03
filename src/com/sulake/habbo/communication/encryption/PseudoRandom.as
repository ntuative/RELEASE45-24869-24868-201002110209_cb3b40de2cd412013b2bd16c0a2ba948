package com.sulake.habbo.communication.encryption
{
   public class PseudoRandom
   {
      
      private static const const_1008:int = 19979;
      
      private static const const_1007:int = 5;
       
      
      private var seed:int;
      
      private var name_2:int;
      
      public function PseudoRandom(param1:int, param2:int)
      {
         super();
         this.seed = param1;
         this.name_2 = param2;
      }
      
      public function nextInt() : int
      {
         var _loc1_:int = Math.abs(const_1008 * seed + const_1007) % name_2;
         seed = _loc1_;
         return _loc1_;
      }
   }
}
