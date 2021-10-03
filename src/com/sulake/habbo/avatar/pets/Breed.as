package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _gender:String;
      
      private var _id:int;
      
      private var var_1916:String = "";
      
      private var var_1915:int;
      
      private var var_1917:String;
      
      private var var_1577:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1915 = parseInt(param1.@pattern);
         _gender = String(param1.@gender);
         var_1577 = Boolean(parseInt(param1.@colorable));
         var_1916 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1916;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1577;
      }
      
      public function get gender() : String
      {
         return _gender;
      }
      
      public function get patternId() : int
      {
         return var_1915;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1917;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1917 = param1;
      }
   }
}
