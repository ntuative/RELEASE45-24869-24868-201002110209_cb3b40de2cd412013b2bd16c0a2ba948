package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class FlatCategory
   {
       
      
      private var var_1185:int;
      
      private var var_1364:String;
      
      public function FlatCategory()
      {
         super();
      }
      
      public function set nodeName(param1:String) : void
      {
         var_1364 = param1;
      }
      
      public function get nodeName() : String
      {
         return var_1364;
      }
      
      public function set nodeId(param1:int) : void
      {
         var_1185 = param1;
      }
      
      public function get nodeId() : int
      {
         return var_1185;
      }
   }
}
