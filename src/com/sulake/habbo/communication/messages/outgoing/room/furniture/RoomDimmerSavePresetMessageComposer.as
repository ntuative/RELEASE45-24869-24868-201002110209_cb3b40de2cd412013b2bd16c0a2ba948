package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2013:int;
      
      private var var_2011:int;
      
      private var var_2009:Boolean;
      
      private var var_2012:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2010:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2011 = param1;
         var_2013 = param2;
         var_2012 = param3;
         var_2010 = param4;
         var_2009 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2011,var_2013,var_2012,var_2010,int(var_2009)];
      }
      
      public function dispose() : void
      {
      }
   }
}
