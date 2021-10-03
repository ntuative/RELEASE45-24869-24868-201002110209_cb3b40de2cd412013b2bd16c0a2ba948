package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1354:String;
      
      private var var_883:String;
      
      private var var_1353:String;
      
      private var var_1352:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1352 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1354 = _loc5_[0];
         var_1353 = _loc5_[1];
         _name = param2;
         var_883 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1354;
      }
      
      public function get languageCode() : String
      {
         return var_1352;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_883;
      }
      
      public function get encoding() : String
      {
         return var_1353;
      }
      
      public function get id() : String
      {
         return var_1352 + "_" + var_1354 + "." + var_1353;
      }
   }
}
