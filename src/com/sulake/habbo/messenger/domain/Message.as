package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_524:int = 2;
      
      public static const const_903:int = 6;
      
      public static const const_661:int = 1;
      
      public static const const_499:int = 3;
      
      public static const const_990:int = 4;
      
      public static const const_617:int = 5;
       
      
      private var var_1912:String;
      
      private var var_991:int;
      
      private var var_1607:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_991 = param2;
         var_1607 = param3;
         var_1912 = param4;
      }
      
      public function get time() : String
      {
         return var_1912;
      }
      
      public function get senderId() : int
      {
         return var_991;
      }
      
      public function get messageText() : String
      {
         return var_1607;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
