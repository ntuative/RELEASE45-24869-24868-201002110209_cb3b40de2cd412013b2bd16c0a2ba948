package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_77:Number = 0;
      
      private var _data:String = "";
      
      private var var_1388:int = 0;
      
      private var var_30:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1574:Boolean = false;
      
      private var var_2329:String = "";
      
      private var _id:int = 0;
      
      private var var_195:Boolean = false;
      
      private var var_207:String = "";
      
      private var var_1571:int = 0;
      
      private var var_1570:int = 0;
      
      private var var_1572:int = 0;
      
      private var var_1573:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1574 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_195)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1574;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_195)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_207;
      }
      
      public function get state() : int
      {
         return var_30;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_195)
         {
            var_1572 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_195)
         {
            var_1571 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_195)
         {
            var_1570 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_195)
         {
            var_207 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_195)
         {
            var_1573 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_195)
         {
            var_30 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1572;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_195)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1571;
      }
      
      public function get wallY() : Number
      {
         return var_1570;
      }
      
      public function get localY() : Number
      {
         return var_1573;
      }
      
      public function setReadOnly() : void
      {
         var_195 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_77;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_195)
         {
            var_77 = param1;
         }
      }
   }
}
