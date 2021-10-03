package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1551:int = -1;
      
      private var var_1311:Boolean;
      
      private var var_1310:String;
      
      private var var_2214:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2214 = String(param1["set-type"]);
         var_1310 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1311 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1551 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1310;
      }
      
      public function get staticId() : int
      {
         return var_1551;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1551 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1311;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1311 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1310 = param1;
      }
      
      public function get setType() : String
      {
         return var_2214;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
