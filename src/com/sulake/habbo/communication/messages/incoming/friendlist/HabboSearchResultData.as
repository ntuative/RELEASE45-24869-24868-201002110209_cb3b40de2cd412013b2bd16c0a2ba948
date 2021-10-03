package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2268:Boolean;
      
      private var var_2267:int;
      
      private var var_2269:Boolean;
      
      private var var_1421:String;
      
      private var var_1303:String;
      
      private var var_1699:int;
      
      private var var_1830:String;
      
      private var var_2270:String;
      
      private var var_1829:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1699 = param1.readInteger();
         this.var_1421 = param1.readString();
         this.var_1830 = param1.readString();
         this.var_2268 = param1.readBoolean();
         this.var_2269 = param1.readBoolean();
         param1.readString();
         this.var_2267 = param1.readInteger();
         this.var_1829 = param1.readString();
         this.var_2270 = param1.readString();
         this.var_1303 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1303;
      }
      
      public function get avatarName() : String
      {
         return this.var_1421;
      }
      
      public function get avatarId() : int
      {
         return this.var_1699;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2268;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2270;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1829;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2269;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1830;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2267;
      }
   }
}
