package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2235:Boolean;
      
      protected var var_1388:Number;
      
      protected var var_2234:Boolean;
      
      protected var _type:int;
      
      protected var var_2237:Boolean;
      
      protected var var_1886:int;
      
      protected var var_2236:Boolean;
      
      protected var var_1324:String;
      
      protected var var_1712:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1655:String;
      
      protected var var_1710:Boolean;
      
      protected var _category:int;
      
      protected var var_1714:int;
      
      protected var var_2253:int;
      
      protected var var_1709:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1710 = param5;
         var_2236 = param6;
         var_2235 = param7;
         var_2234 = param8;
         var_1324 = param9;
         var_1388 = param10;
         var_2253 = param11;
         var_1709 = param12;
         var_1714 = param13;
         var_1712 = param14;
         var_1655 = param15;
         var_1886 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2237;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1388;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2237 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1886;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2234;
      }
      
      public function get slotId() : String
      {
         return var_1655;
      }
      
      public function get expires() : int
      {
         return var_2253;
      }
      
      public function get creationYear() : int
      {
         return var_1712;
      }
      
      public function get creationDay() : int
      {
         return var_1709;
      }
      
      public function get stuffData() : String
      {
         return var_1324;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2236;
      }
      
      public function get groupable() : Boolean
      {
         return var_1710;
      }
      
      public function get creationMonth() : int
      {
         return var_1714;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2235;
      }
   }
}
