package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1304:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1088:int;
      
      private var var_986:String;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_986 = param2;
         var_1088 = param3;
      }
      
      public function get classId() : int
      {
         return var_1088;
      }
      
      public function get itemType() : String
      {
         return var_986;
      }
   }
}
