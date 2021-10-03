package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1261:String = "F";
      
      public static const const_975:String = "M";
       
      
      private var var_76:Number = 0;
      
      private var var_576:String = "";
      
      private var var_2175:int = 0;
      
      private var var_2097:String = "";
      
      private var var_2096:int = 0;
      
      private var var_1873:int = 0;
      
      private var var_2098:String = "";
      
      private var var_1117:String = "";
      
      private var _id:int = 0;
      
      private var var_195:Boolean = false;
      
      private var var_207:int = 0;
      
      private var var_2176:String = "";
      
      private var _name:String = "";
      
      private var var_1877:int = 0;
      
      private var _y:Number = 0;
      
      private var var_77:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_77;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_207;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_195)
         {
            var_207 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_195)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2175;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_195)
         {
            var_2096 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2176;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_195)
         {
            var_2098 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_195)
         {
            var_2176 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_195)
         {
            var_1873 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_195)
         {
            var_576 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_195)
         {
            var_2175 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_195)
         {
            var_1117 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_2096;
      }
      
      public function get groupID() : String
      {
         return var_2098;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_195)
         {
            var_1877 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_195)
         {
            var_2097 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_195 = true;
      }
      
      public function get sex() : String
      {
         return var_1117;
      }
      
      public function get figure() : String
      {
         return var_576;
      }
      
      public function get webID() : int
      {
         return var_1877;
      }
      
      public function get custom() : String
      {
         return var_2097;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_195)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_195)
         {
            var_77 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_195)
         {
            var_76 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_76;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1873;
      }
   }
}
