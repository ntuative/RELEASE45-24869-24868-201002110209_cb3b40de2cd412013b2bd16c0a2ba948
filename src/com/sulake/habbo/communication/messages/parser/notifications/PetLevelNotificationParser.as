package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_576:String;
      
      private var var_1637:int;
      
      private var var_1636:String;
      
      private var var_1014:int;
      
      private var var_1287:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1287;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1287 = param1.readInteger();
         var_1636 = param1.readString();
         var_1637 = param1.readInteger();
         var_576 = param1.readString();
         var_1014 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1636;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_576;
      }
      
      public function get petType() : int
      {
         return var_1014;
      }
      
      public function get level() : int
      {
         return var_1637;
      }
   }
}
