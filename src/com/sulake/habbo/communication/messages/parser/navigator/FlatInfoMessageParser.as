package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_203:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_203 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_203;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_203 = new RoomSettingsFlatInfo();
         var_203.allowFurniMoving = param1.readInteger() == 1;
         var_203.doorMode = param1.readInteger();
         var_203.id = param1.readInteger();
         var_203.ownerName = param1.readString();
         var_203.type = param1.readString();
         var_203.name = param1.readString();
         var_203.description = param1.readString();
         var_203.showOwnerName = param1.readInteger() == 1;
         var_203.allowTrading = param1.readInteger() == 1;
         var_203.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
