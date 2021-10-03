package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_857:String = "select_outfit";
       
      
      private var var_2221:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_857);
         var_2221 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2221;
      }
   }
}
