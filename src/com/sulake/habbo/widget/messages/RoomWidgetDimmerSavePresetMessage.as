package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_623:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2013:int;
      
      private var var_2011:int;
      
      private var var_2081:Boolean;
      
      private var var_970:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_623);
         var_2011 = param1;
         var_2013 = param2;
         _color = param3;
         var_970 = param4;
         var_2081 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2013;
      }
      
      public function get presetNumber() : int
      {
         return var_2011;
      }
      
      public function get brightness() : int
      {
         return var_970;
      }
      
      public function get apply() : Boolean
      {
         return var_2081;
      }
   }
}
