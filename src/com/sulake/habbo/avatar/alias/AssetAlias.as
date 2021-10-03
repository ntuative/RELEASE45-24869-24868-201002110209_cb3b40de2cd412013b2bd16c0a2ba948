package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_967:Boolean;
      
      private var _name:String;
      
      private var var_2194:String;
      
      private var var_968:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2194 = String(param1.@link);
         var_968 = Boolean(parseInt(param1.@fliph));
         var_967 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_968;
      }
      
      public function get flipV() : Boolean
      {
         return var_967;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2194;
      }
   }
}
