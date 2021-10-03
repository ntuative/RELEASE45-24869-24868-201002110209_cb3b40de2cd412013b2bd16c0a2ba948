package com.sulake.habbo.room.object.logic.room
{
   import com.sulake.habbo.room.messages.RoomObjectVisibilityUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   
   public class RoomTileCursorLogic extends ObjectLogicBase
   {
       
      
      public function RoomTileCursorLogic()
      {
         super();
      }
      
      override public function initialize(param1:XML) : void
      {
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(_loc2_ != null)
         {
            _loc2_.setNumber(RoomObjectVariableEnum.const_175,1);
            _loc2_.setNumber(RoomObjectVariableEnum.const_67,Number(false));
         }
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         super.processUpdateMessage(param1);
         var _loc2_:RoomObjectVisibilityUpdateMessage = param1 as RoomObjectVisibilityUpdateMessage;
         if(_loc2_ != null)
         {
            _loc3_ = object.getModelController();
            if(_loc2_.type == RoomObjectVisibilityUpdateMessage.const_431)
            {
               if(_loc3_ != null)
               {
                  _loc3_.setNumber(RoomObjectVariableEnum.const_67,Number(true));
               }
            }
            else if(_loc2_.type == RoomObjectVisibilityUpdateMessage.const_439)
            {
               if(_loc3_ != null)
               {
                  _loc3_.setNumber(RoomObjectVariableEnum.const_67,Number(false));
               }
            }
         }
      }
   }
}