package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomSettingsFlatInfo
   {
      
      public static const const_462:int = 0;
      
      public static const const_105:int = 2;
      
      public static const const_147:int = 1;
      
      public static const const_713:Array = ["open","closed","password"];
       
      
      private var _id:int;
      
      private var var_1944:Boolean;
      
      private var _password:String;
      
      private var var_1772:int;
      
      private var _type:String;
      
      private var _ownerName:String;
      
      private var var_1943:Boolean;
      
      private var var_1945:Boolean;
      
      private var _name:String;
      
      private var var_1770:Boolean;
      
      private var var_1092:String;
      
      public function RoomSettingsFlatInfo()
      {
         super();
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1944 = param1;
      }
      
      public function get categoryAlertKey() : Boolean
      {
         return var_1945;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1943 = param1;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1770;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1943;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1944;
      }
      
      public function set categoryAlertKey(param1:Boolean) : void
      {
         var_1945 = param1;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1772 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1770 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1772;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1092 = param1;
      }
      
      public function get description() : String
      {
         return var_1092;
      }
   }
}
