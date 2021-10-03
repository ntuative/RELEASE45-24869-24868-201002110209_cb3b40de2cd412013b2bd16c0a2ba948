package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.getTimer;
   
   public class IssueInfoMessageParser implements IMessageParser
   {
       
      
      private var var_48:IssueMessageData;
      
      public function IssueInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_48 = new IssueMessageData();
         var_48.issueId = param1.readInteger();
         var_48.state = param1.readInteger();
         var_48.categoryId = param1.readInteger();
         var_48.reportedCategoryId = param1.readInteger();
         var_48.timeStamp = getTimer() - param1.readInteger();
         var_48.priority = param1.readInteger();
         var_48.reporterUserId = param1.readInteger();
         var_48.reporterUserName = param1.readString();
         var_48.reportedUserId = param1.readInteger();
         var_48.reportedUserName = param1.readString();
         var_48.pickerUserId = param1.readInteger();
         var_48.pickerUserName = param1.readString();
         var_48.message = param1.readString();
         var_48.chatRecordId = param1.readInteger();
         var_48.roomName = param1.readString();
         var_48.roomType = param1.readInteger();
         if(false)
         {
            var_48.roomResources = param1.readString();
            var_48.unitPort = param1.readInteger();
            var_48.worldId = param1.readInteger();
         }
         if(false)
         {
            var_48.flatType = param1.readString();
            var_48.flatId = param1.readInteger();
            var_48.flatOwnerName = param1.readString();
         }
         return true;
      }
      
      public function get issueData() : IssueMessageData
      {
         return var_48;
      }
      
      public function flush() : Boolean
      {
         var_48 = null;
         return true;
      }
   }
}
