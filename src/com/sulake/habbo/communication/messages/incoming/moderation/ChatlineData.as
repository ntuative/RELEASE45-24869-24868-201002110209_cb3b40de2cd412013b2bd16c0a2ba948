package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1497:String;
      
      private var var_2142:int;
      
      private var var_2143:int;
      
      private var var_2145:int;
      
      private var var_2144:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2142 = param1.readInteger();
         var_2145 = param1.readInteger();
         var_2143 = param1.readInteger();
         var_2144 = param1.readString();
         var_1497 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1497;
      }
      
      public function get hour() : int
      {
         return var_2142;
      }
      
      public function get minute() : int
      {
         return var_2145;
      }
      
      public function get chatterName() : String
      {
         return var_2144;
      }
      
      public function get chatterId() : int
      {
         return var_2143;
      }
   }
}
