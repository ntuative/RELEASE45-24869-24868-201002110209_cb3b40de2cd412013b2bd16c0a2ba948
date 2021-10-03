package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_140:int;
      
      private var var_207:int = 0;
      
      private var _roomId:int;
      
      private var var_76:int = 0;
      
      private var _y:int = 0;
      
      private var var_1612:int;
      
      private var var_1613:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_140 = param1;
         var_1612 = param2;
         var_1613 = param3;
         var_76 = param4;
         _y = param5;
         var_207 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1612)
         {
            case RoomObjectCategoryEnum.const_15:
               return [var_140 + " " + var_76 + " " + _y + " " + var_207];
            case RoomObjectCategoryEnum.const_12:
               return [var_140 + " " + var_1613];
            default:
               return [];
         }
      }
   }
}
