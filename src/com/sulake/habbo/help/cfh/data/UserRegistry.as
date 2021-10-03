package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1002:int = 80;
       
      
      private var var_419:Map;
      
      private var var_601:String = "";
      
      private var var_1075:Array;
      
      public function UserRegistry()
      {
         var_419 = new Map();
         var_1075 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_419.getValue(var_1075.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_601;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_419.getValue(param1) != null)
         {
            var_419.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_601);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_601 == "")
         {
            var_1075.push(param1);
         }
         var_419.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_419;
      }
      
      public function unregisterRoom() : void
      {
         var_601 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_419.length > const_1002)
         {
            _loc1_ = var_419.getKey(0);
            var_419.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_601 = param1;
         if(var_601 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
