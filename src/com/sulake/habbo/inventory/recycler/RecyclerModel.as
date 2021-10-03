package com.sulake.habbo.inventory.recycler
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.inventory.HabboInventory;
   import com.sulake.habbo.inventory.IInventoryModel;
   import com.sulake.habbo.inventory.furni.FurniModel;
   import com.sulake.habbo.inventory.items.IItem;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class RecyclerModel implements IInventoryModel
   {
      
      public static const STATE_ACTIVE:uint = 1;
      
      public static const const_1022:uint = 0;
       
      
      private var var_584:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_30:uint = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_8:HabboInventory;
      
      private var name_1:Map;
      
      private var _localization:IHabboLocalizationManager;
      
      public function RecyclerModel(param1:HabboInventory, param2:IHabboWindowManager, param3:IHabboCommunicationManager, param4:IAssetLibrary, param5:IRoomEngine, param6:IHabboLocalizationManager)
      {
         super();
         var_8 = param1;
         _communication = param3;
         _assetLibrary = param4;
         _roomEngine = param5;
         _localization = param6;
      }
      
      public function startRecycler() : void
      {
         var_30 = STATE_ACTIVE;
         name_1 = new Map();
         var_8.furniModel.showRecyclable(true);
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return null;
      }
      
      public function get running() : Boolean
      {
         return var_30 == STATE_ACTIVE;
      }
      
      public function requestInitialization(param1:int = 0) : void
      {
      }
      
      public function lockSelectedFurni() : int
      {
         if(name_1 == null)
         {
            return 0;
         }
         var _loc1_:IItem = var_8.furniModel.requestSelectedFurniToRecycler();
         if(_loc1_ == null)
         {
            return 0;
         }
         if(name_1.getValue(_loc1_.id) == null)
         {
            name_1.add(_loc1_.id,_loc1_);
         }
         return _loc1_.id;
      }
      
      public function get state() : uint
      {
         return var_30;
      }
      
      public function getFurniInventoryModel() : FurniModel
      {
         return var_8.furniModel;
      }
      
      public function categorySwitch(param1:String) : void
      {
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            var_8 = null;
            _communication = null;
            _assetLibrary = null;
            _roomEngine = null;
            _localization = null;
            _disposed = true;
         }
         stopRecycler();
      }
      
      public function stopRecycler() : void
      {
         var _loc2_:int = 0;
         var_30 = const_1022;
         if(var_8 != null && false)
         {
            var_8.furniModel.showRecyclable(false);
         }
         else
         {
            name_1 = null;
         }
         if(name_1 == null)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < name_1.length)
         {
            _loc2_ = name_1.getKey(_loc1_);
            var_8.furniModel.removeLockFrom(_loc2_);
            _loc1_++;
         }
         name_1 = null;
      }
      
      public function set state(param1:uint) : void
      {
         var_30 = param1;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function subCategorySwitch(param1:String) : void
      {
      }
      
      public function getOwnItemsInRecycler() : Array
      {
         var _loc1_:Array = new Array();
         if(name_1 == null)
         {
            return [];
         }
         var _loc2_:int = 0;
         while(_loc2_ < name_1.length)
         {
            _loc1_.push(name_1.getKey(_loc2_));
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function closingInventoryView() : void
      {
      }
      
      public function releaseFurni(param1:int) : Boolean
      {
         if(name_1 == null)
         {
            return true;
         }
         var _loc2_:IItem = name_1.getValue(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         var_8.furniModel.removeLockFrom(param1);
         name_1.remove(param1);
         return true;
      }
   }
}
