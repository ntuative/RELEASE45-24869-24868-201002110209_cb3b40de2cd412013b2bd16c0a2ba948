package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1597:Array;
      
      private var var_1596:String;
      
      private var var_1598:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1596 = param1;
         var_1597 = param2;
         var_1598 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1596;
      }
      
      public function get yieldList() : Array
      {
         return var_1597;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1598;
      }
   }
}
