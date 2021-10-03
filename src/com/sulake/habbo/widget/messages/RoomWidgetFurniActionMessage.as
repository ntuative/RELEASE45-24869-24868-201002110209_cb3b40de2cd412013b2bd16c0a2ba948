package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_221:String = "RWFAM_MOVE";
      
      public static const const_604:String = "RWFUAM_ROTATE";
      
      public static const const_599:String = "RWFAM_PICKUP";
       
      
      private var var_1820:int = 0;
      
      private var var_1821:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1820 = param2;
         var_1821 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1820;
      }
      
      public function get furniCategory() : int
      {
         return var_1821;
      }
   }
}
