package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1436:int = 9;
      
      public static const const_1434:int = 4;
      
      public static const const_1443:int = 1;
      
      public static const const_1247:int = 10;
      
      public static const const_1522:int = 2;
      
      public static const const_1132:int = 7;
      
      public static const const_1331:int = 11;
      
      public static const const_1548:int = 3;
      
      public static const const_1342:int = 8;
      
      public static const const_1156:int = 5;
      
      public static const const_1437:int = 6;
      
      public static const const_1316:int = 12;
       
      
      private var var_1594:String;
      
      private var _roomId:int;
      
      private var var_1125:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1594;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1125 = param1.readInteger();
         var_1594 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1125;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
