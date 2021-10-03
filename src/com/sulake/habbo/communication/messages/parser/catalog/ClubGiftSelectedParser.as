package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ClubGiftSelectedParser implements IMessageParser
   {
       
      
      private var var_1752:String;
      
      private var var_730:String;
      
      private var var_1272:int;
      
      private var var_1088:int;
      
      private var var_1253:String;
      
      public function ClubGiftSelectedParser()
      {
         super();
      }
      
      public function get classId() : int
      {
         return var_1088;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1253 = param1.readString();
         var_1752 = param1.readString();
         var_1088 = param1.readInteger();
         var_730 = param1.readString();
         var_1272 = param1.readInteger();
         return true;
      }
      
      public function get contentType() : String
      {
         return var_1752;
      }
      
      public function get productCode() : String
      {
         return var_1253;
      }
   }
}
