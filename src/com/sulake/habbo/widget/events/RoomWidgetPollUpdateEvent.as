package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_111:String = "RWPUW_CONTENT";
      
      public static const const_86:String = "RWPUW_OFFER";
      
      public static const const_43:String = "RWPUW_ERROR";
       
      
      private var var_912:Array = null;
      
      private var var_1097:String = "";
      
      private var var_1262:String;
      
      private var var_1098:String = "";
      
      private var var_913:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_912;
      }
      
      public function get startMessage() : String
      {
         return var_1097;
      }
      
      public function get summary() : String
      {
         return var_1262;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1097 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_913 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1262 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_913;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1098 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1098;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_912 = param1;
      }
   }
}
