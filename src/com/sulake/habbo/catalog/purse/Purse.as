package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2064:int = 0;
      
      private var var_2082:int = 0;
      
      private var var_1823:int = 0;
      
      private var var_2068:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2082;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2082 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2064 = param1;
      }
      
      public function get credits() : int
      {
         return var_1823;
      }
      
      public function get clubDays() : int
      {
         return var_2064;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2068 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1823 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_2068;
      }
   }
}
