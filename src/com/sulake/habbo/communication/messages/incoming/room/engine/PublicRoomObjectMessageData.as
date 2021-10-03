package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_951:int = 0;
      
      private var var_77:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_195:Boolean = false;
      
      private var var_207:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_76:Number = 0;
      
      private var var_949:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_195)
         {
            var_77 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_951;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_207;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_195)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_195)
         {
            var_207 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_195)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_195 = true;
      }
      
      public function get z() : Number
      {
         return var_77;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_195)
         {
            var_951 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_195)
         {
            var_949 = param1;
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
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_195)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_949;
      }
   }
}
