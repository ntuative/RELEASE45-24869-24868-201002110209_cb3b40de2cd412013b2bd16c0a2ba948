package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_887:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1169:Boolean = true;
      
      private var var_1316:int = 0;
      
      private var var_814:int = 0;
      
      private var var_1231:int = 0;
      
      private var var_813:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1318:int = 15;
      
      private var var_163:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1317:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1231 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1169)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_814,var_813);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1316;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_814 == 0 && var_813 == 0;
      }
      
      private function resetLog() : void
      {
         var_814 = 0;
         var_813 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1169)
         {
            return;
         }
         if(getTimer() - var_1231 > var_1317 * 1000 && var_1316 < var_1318)
         {
            var_1231 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_163 = param1;
         var_1317 = int(var_163.getKey("lagwarninglog.interval","60"));
         var_1318 = int(var_163.getKey("lagwarninglog.reportlimit","15"));
         var_1169 = Boolean(int(var_163.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_813 += 1;
            case const_887:
               var_814 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
