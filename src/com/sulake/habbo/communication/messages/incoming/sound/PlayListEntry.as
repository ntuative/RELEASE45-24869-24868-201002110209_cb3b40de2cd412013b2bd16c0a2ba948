package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1886:int;
      
      private var var_1997:int = 0;
      
      private var var_1998:String;
      
      private var var_1996:int;
      
      private var var_1995:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1886 = param1;
         var_1996 = param2;
         var_1995 = param3;
         var_1998 = param4;
      }
      
      public function get length() : int
      {
         return var_1996;
      }
      
      public function get name() : String
      {
         return var_1995;
      }
      
      public function get creator() : String
      {
         return var_1998;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1997;
      }
      
      public function get id() : int
      {
         return var_1886;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1997 = param1;
      }
   }
}
