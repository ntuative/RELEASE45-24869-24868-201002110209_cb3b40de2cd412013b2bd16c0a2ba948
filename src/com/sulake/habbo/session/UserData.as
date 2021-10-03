package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_576:String = "";
      
      private var var_2097:String = "";
      
      private var var_2096:int = 0;
      
      private var var_1873:int = 0;
      
      private var _type:int = 0;
      
      private var var_2098:String = "";
      
      private var var_1117:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1877:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_2096 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_2098 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_576 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1117 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_2096;
      }
      
      public function set webID(param1:int) : void
      {
         var_1877 = param1;
      }
      
      public function get groupID() : String
      {
         return var_2098;
      }
      
      public function set custom(param1:String) : void
      {
         var_2097 = param1;
      }
      
      public function get figure() : String
      {
         return var_576;
      }
      
      public function get sex() : String
      {
         return var_1117;
      }
      
      public function get custom() : String
      {
         return var_2097;
      }
      
      public function get webID() : int
      {
         return var_1877;
      }
      
      public function set xp(param1:int) : void
      {
         var_1873 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1873;
      }
   }
}
