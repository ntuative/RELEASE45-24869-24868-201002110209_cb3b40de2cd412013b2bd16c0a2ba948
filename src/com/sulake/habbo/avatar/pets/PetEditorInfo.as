package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1575:Boolean;
      
      private var var_1576:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1575 = Boolean(parseInt(param1.@club));
         var_1576 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1575;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1576;
      }
   }
}
