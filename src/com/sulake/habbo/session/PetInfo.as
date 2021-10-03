package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1637:int;
      
      private var var_1682:int;
      
      private var var_1808:int;
      
      private var var_1811:int;
      
      private var _nutrition:int;
      
      private var var_1287:int;
      
      private var var_1805:int;
      
      private var var_1809:int;
      
      private var _energy:int;
      
      private var var_1803:int;
      
      private var var_1802:int;
      
      private var _ownerName:String;
      
      private var var_1810:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1637;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1682 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1637 = param1;
      }
      
      public function get petId() : int
      {
         return var_1287;
      }
      
      public function get experienceMax() : int
      {
         return var_1809;
      }
      
      public function get nutritionMax() : int
      {
         return var_1811;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1805 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1810;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1287 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1802;
      }
      
      public function get respect() : int
      {
         return var_1682;
      }
      
      public function get levelMax() : int
      {
         return var_1805;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1809 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1808 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1811 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1810 = param1;
      }
      
      public function get experience() : int
      {
         return var_1808;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1802 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1803 = param1;
      }
      
      public function get age() : int
      {
         return var_1803;
      }
   }
}
