package com.sulake.habbo.catalog.club
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.widgets.ClubGiftWidget;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetClubGiftInfo;
   import com.sulake.habbo.communication.messages.outgoing.catalog.SelectClubGiftComposer;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class ClubGiftController
   {
       
      
      private var _widget:ClubGiftWidget;
      
      private var var_908:int;
      
      private var var_1622:int;
      
      private var var_75:HabboCatalog;
      
      private var var_522:Array;
      
      private var _windowManager:IHabboWindowManager;
      
      public function ClubGiftController(param1:HabboCatalog)
      {
         super();
         var_75 = param1;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         if(!var_75)
         {
            return null;
         }
         return var_75.windowManager;
      }
      
      public function set widget(param1:ClubGiftWidget) : void
      {
         _widget = param1;
         var_75.connection.send(new GetClubGiftInfo());
      }
      
      public function getProductData(param1:String) : IProductData
      {
         if(!var_75)
         {
            return null;
         }
         return var_75.getProductData(param1);
      }
      
      public function get giftsAvailable() : int
      {
         return var_908;
      }
      
      public function getOffers() : Array
      {
         return var_522;
      }
      
      public function setInfo(param1:int, param2:int, param3:Array) : void
      {
         var_1622 = param1;
         var_908 = param2;
         var_522 = [];
         if(param3)
         {
            var_522 = param3.slice();
         }
         _widget.update();
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1622;
      }
      
      public function get assets() : IAssetLibrary
      {
         if(!var_75)
         {
            return null;
         }
         return var_75.assets;
      }
      
      public function get hasClub() : Boolean
      {
         if(!var_75 || !var_75.getPurse())
         {
            return false;
         }
         return var_75.getPurse().clubDays > 0;
      }
      
      public function get localization() : ICoreLocalizationManager
      {
         if(!var_75)
         {
            return null;
         }
         return var_75.localization;
      }
      
      public function selectGift(param1:String) : void
      {
         if(!param1 || !var_75 || true)
         {
            return;
         }
         var_75.connection.send(new SelectClubGiftComposer(param1));
         --var_908;
         _widget.update();
      }
      
      public function dispose() : void
      {
         var_75 = null;
         _windowManager = null;
      }
   }
}
