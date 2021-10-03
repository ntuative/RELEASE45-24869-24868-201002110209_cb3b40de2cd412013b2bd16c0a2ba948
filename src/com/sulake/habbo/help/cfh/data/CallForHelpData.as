package com.sulake.habbo.help.cfh.data
{
   public class CallForHelpData
   {
       
      
      private var var_1801:int;
      
      private var var_1153:String = "";
      
      private var var_954:int;
      
      public function CallForHelpData()
      {
         super();
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1153 = param1;
      }
      
      public function get topicIndex() : int
      {
         return var_1801;
      }
      
      public function set topicIndex(param1:int) : void
      {
         var_1801 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1153;
      }
      
      public function flush() : void
      {
         var_954 = 0;
         var_1153 = "";
      }
      
      public function get userSelected() : Boolean
      {
         return var_954 > 0;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_954 = param1;
      }
      
      public function getTopicKey(param1:int) : String
      {
         return (!!userSelected ? "help.cfh.topicwithharasser." : "help.cfh.topic.") + param1;
      }
      
      public function get reportedUserId() : int
      {
         return var_954;
      }
   }
}
