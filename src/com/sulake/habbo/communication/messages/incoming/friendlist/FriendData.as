package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_576:String;
      
      private var var_1302:String;
      
      private var var_1304:String;
      
      private var var_1093:int;
      
      private var _gender:int;
      
      private var var_1303:String;
      
      private var _name:String;
      
      private var var_1216:Boolean;
      
      private var var_637:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_637 = param1.readBoolean();
         this.var_1216 = param1.readBoolean();
         this.var_576 = param1.readString();
         this.var_1093 = param1.readInteger();
         this.var_1304 = param1.readString();
         this.var_1302 = param1.readString();
         this.var_1303 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1303;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1304;
      }
      
      public function get categoryId() : int
      {
         return var_1093;
      }
      
      public function get online() : Boolean
      {
         return var_637;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1216;
      }
      
      public function get lastAccess() : String
      {
         return var_1302;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_576;
      }
   }
}
