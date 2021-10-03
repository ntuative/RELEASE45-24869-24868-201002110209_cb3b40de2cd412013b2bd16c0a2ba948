package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1771:int;
      
      private var var_1902:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_1902 = param1.readString();
         var_1771 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_1902;
      }
      
      public function get userCount() : int
      {
         return var_1771;
      }
   }
}
