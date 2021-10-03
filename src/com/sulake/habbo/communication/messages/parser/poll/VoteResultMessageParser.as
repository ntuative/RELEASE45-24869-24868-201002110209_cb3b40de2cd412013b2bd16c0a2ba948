package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1294:int;
      
      private var var_987:String;
      
      private var var_603:Array;
      
      private var var_998:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_603.slice();
      }
      
      public function flush() : Boolean
      {
         var_987 = "";
         var_998 = [];
         var_603 = [];
         var_1294 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1294;
      }
      
      public function get question() : String
      {
         return var_987;
      }
      
      public function get choices() : Array
      {
         return var_998.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_987 = param1.readString();
         var_998 = [];
         var_603 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_998.push(param1.readString());
            var_603.push(param1.readInteger());
            _loc3_++;
         }
         var_1294 = param1.readInteger();
         return true;
      }
   }
}
