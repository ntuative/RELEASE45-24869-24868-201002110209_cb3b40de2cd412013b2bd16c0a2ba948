package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_905:Boolean;
      
      private var var_907:Boolean;
      
      private var var_906:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_905;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_907;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_906 = param1.readBoolean();
         var_907 = param1.readBoolean();
         var_905 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_906;
      }
      
      public function flush() : Boolean
      {
         var_906 = false;
         var_907 = false;
         var_905 = false;
         return true;
      }
   }
}
