package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1102:Array;
      
      private var var_2149:String;
      
      private var var_2151:String;
      
      private var var_2150:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1102 = param1;
         var_2149 = param2;
         var_2151 = param3;
         var_2150 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1102;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_2149;
      }
      
      public function get colourAssetName() : String
      {
         return var_2151;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_2150;
      }
   }
}
