package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1552:GarbageMonitor = null;
      
      private var var_1231:int = 0;
      
      private var var_1116:Boolean = false;
      
      private var var_1666:String = "";
      
      private var var_1553:String = "";
      
      private var var_344:Number = 0;
      
      private var var_1318:int = 10;
      
      private var var_2309:Array;
      
      private var var_597:int = 0;
      
      private var var_1317:int = 60;
      
      private var var_1048:int = 0;
      
      private var var_1047:int = 0;
      
      private var var_1662:String = "";
      
      private var var_2229:Number = 0;
      
      private var var_1315:int = 1000;
      
      private var var_2231:Boolean = true;
      
      private var var_2230:Number = 0.15;
      
      private var var_163:IHabboConfigurationManager = null;
      
      private var var_1667:String = "";
      
      private var var_1316:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2309 = [];
         super();
         var_1553 = Capabilities.version;
         var_1666 = Capabilities.os;
         var_1116 = Capabilities.isDebugger;
         var_1667 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1552 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1231 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1552.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1552.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_344;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1317 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1553;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1047;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1315)
         {
            ++var_1048;
            _loc3_ = true;
         }
         else
         {
            ++var_597;
            if(var_597 <= 1)
            {
               var_344 = param1;
            }
            else
            {
               _loc4_ = Number(var_597);
               var_344 = var_344 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1231 > var_1317 * 1000 && var_1316 < var_1318)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_344);
            _loc5_ = true;
            if(var_2231 && var_1316 > 0)
            {
               _loc6_ = differenceInPercents(var_2229,var_344);
               if(_loc6_ < var_2230)
               {
                  _loc5_ = false;
               }
            }
            var_1231 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2229 = var_344;
               if(sendReport())
               {
                  ++var_1316;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1318 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1315 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1667,var_1553,var_1666,var_1662,var_1116,_loc4_,_loc3_,var_1047,var_344,var_1048);
            _connection.send(_loc1_);
            var_1047 = 0;
            var_344 = 0;
            var_597 = 0;
            var_1048 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_163 = param1;
         var_1317 = int(var_163.getKey("performancetest.interval","60"));
         var_1315 = int(var_163.getKey("performancetest.slowupdatelimit","1000"));
         var_1318 = int(var_163.getKey("performancetest.reportlimit","10"));
         var_2230 = Number(var_163.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2231 = Boolean(int(var_163.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
