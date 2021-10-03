package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_2035:int;
      
      private var var_1772:int;
      
      private var var_2034:Boolean;
      
      private var var_2033:Boolean;
      
      private var var_2032:Array;
      
      private var var_1769:Boolean;
      
      private var var_1093:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_591:Array;
      
      private var var_1092:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1772;
      }
      
      public function get description() : String
      {
         return var_1092;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2033;
      }
      
      public function get maximumVisitors() : int
      {
         return var_2035;
      }
      
      public function set description(param1:String) : void
      {
         var_1092 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1769 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2035 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1093;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2032;
      }
      
      public function get tags() : Array
      {
         return var_591;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1769;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1772 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2034 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_591 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2032 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1093 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2034;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2033 = param1;
      }
   }
}
