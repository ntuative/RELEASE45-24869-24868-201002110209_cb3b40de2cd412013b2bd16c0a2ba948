package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_576:String;
      
      private var var_2291:String;
      
      private var var_2289:int;
      
      private var var_2290:int;
      
      private var var_1117:String;
      
      private var var_1303:String;
      
      private var _name:String;
      
      private var var_431:int;
      
      private var var_744:int;
      
      private var var_2293:int;
      
      private var _respectTotal:int;
      
      private var var_2292:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2290;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1303;
      }
      
      public function get customData() : String
      {
         return this.var_2291;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_431;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2289;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2292;
      }
      
      public function get figure() : String
      {
         return this.var_576;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_1117;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_576 = param1.readString();
         this.var_1117 = param1.readString();
         this.var_2291 = param1.readString();
         this.var_1303 = param1.readString();
         this.var_2293 = param1.readInteger();
         this.var_2292 = param1.readString();
         this.var_2289 = param1.readInteger();
         this.var_2290 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_744 = param1.readInteger();
         this.var_431 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2293;
      }
      
      public function get respectLeft() : int
      {
         return this.var_744;
      }
   }
}
