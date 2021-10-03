package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_441:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_675:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_691:String;
      
      private var var_140:int;
      
      private var var_178:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_140 = param2;
         var_178 = param3;
         var_691 = param4;
      }
      
      public function get objectId() : int
      {
         return var_140;
      }
      
      public function get text() : String
      {
         return var_178;
      }
      
      public function get colorHex() : String
      {
         return var_691;
      }
   }
}
