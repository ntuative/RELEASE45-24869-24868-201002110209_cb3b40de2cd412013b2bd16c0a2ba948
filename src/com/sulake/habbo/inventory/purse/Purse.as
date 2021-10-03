package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2066:Boolean = false;
      
      private var var_2067:int = 0;
      
      private var var_2064:int = 0;
      
      private var var_2065:int = 0;
      
      private var var_1505:int = 0;
      
      private var var_2068:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1505 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2067;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2066;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2066 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2067 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2064 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1505;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2065 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_2064;
      }
      
      public function get pixelBalance() : int
      {
         return var_2065;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2068 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_2068;
      }
   }
}
