package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_949:int = 0;
      
      private var _data:String = "";
      
      private var var_1388:int = -1;
      
      private var var_30:int = 0;
      
      private var _type:int = 0;
      
      private var var_951:int = 0;
      
      private var var_2329:String = "";
      
      private var var_1604:int = 0;
      
      private var _id:int = 0;
      
      private var var_195:Boolean = false;
      
      private var var_207:int = 0;
      
      private var var_1605:String = null;
      
      private var var_76:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_77:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_195)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_195)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_207;
      }
      
      public function get extra() : int
      {
         return var_1388;
      }
      
      public function get state() : int
      {
         return var_30;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_195)
         {
            var_207 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_195)
         {
            var_76 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_195)
         {
            var_1388 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_77;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_195)
         {
            var_30 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1604;
      }
      
      public function get staticClass() : String
      {
         return var_1605;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_195)
         {
            var_1604 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_195)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_195)
         {
            var_1605 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_195 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_195)
         {
            var_949 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_195)
         {
            var_951 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_195)
         {
            var_77 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_949;
      }
      
      public function get x() : Number
      {
         return var_76;
      }
      
      public function get sizeY() : int
      {
         return var_951;
      }
   }
}
