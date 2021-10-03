package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1869:Class;
      
      private var var_1868:Class;
      
      private var var_1867:String;
      
      private var var_1183:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1867 = param1;
         var_1868 = param2;
         var_1869 = param3;
         if(rest == null)
         {
            var_1183 = new Array();
         }
         else
         {
            var_1183 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1869;
      }
      
      public function get assetClass() : Class
      {
         return var_1868;
      }
      
      public function get mimeType() : String
      {
         return var_1867;
      }
      
      public function get fileTypes() : Array
      {
         return var_1183;
      }
   }
}
