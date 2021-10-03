package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_77:Number = 0;
      
      private var var_207:int = 0;
      
      private var var_1969:int = 0;
      
      private var var_1966:Number = 0;
      
      private var var_1970:Number = 0;
      
      private var var_1965:Number = 0;
      
      private var var_1968:Number = 0;
      
      private var var_1967:Boolean = false;
      
      private var var_76:Number = 0;
      
      private var _id:int = 0;
      
      private var var_190:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_190 = [];
         super();
         _id = param1;
         var_76 = param2;
         _y = param3;
         var_77 = param4;
         var_1968 = param5;
         var_207 = param6;
         var_1969 = param7;
         var_1966 = param8;
         var_1970 = param9;
         var_1965 = param10;
         var_1967 = param11;
         var_190 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_77;
      }
      
      public function get dir() : int
      {
         return var_207;
      }
      
      public function get localZ() : Number
      {
         return var_1968;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1967;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1969;
      }
      
      public function get targetX() : Number
      {
         return var_1966;
      }
      
      public function get targetY() : Number
      {
         return var_1970;
      }
      
      public function get targetZ() : Number
      {
         return var_1965;
      }
      
      public function get x() : Number
      {
         return var_76;
      }
      
      public function get actions() : Array
      {
         return var_190.slice();
      }
   }
}
