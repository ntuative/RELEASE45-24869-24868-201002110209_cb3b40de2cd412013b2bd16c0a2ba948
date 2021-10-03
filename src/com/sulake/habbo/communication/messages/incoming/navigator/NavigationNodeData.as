package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1185:int;
      
      private var var_1364:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1185 = param1;
         var_1364 = param2;
         Logger.log("READ NODE: " + var_1185 + ", " + var_1364);
      }
      
      public function get nodeName() : String
      {
         return var_1364;
      }
      
      public function get nodeId() : int
      {
         return var_1185;
      }
   }
}
