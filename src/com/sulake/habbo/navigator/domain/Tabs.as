package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_545:int = 6;
      
      public static const const_207:int = 5;
      
      public static const const_655:int = 2;
      
      public static const const_264:int = 9;
      
      public static const const_318:int = 4;
      
      public static const const_247:int = 2;
      
      public static const const_643:int = 4;
      
      public static const const_181:int = 8;
      
      public static const const_590:int = 7;
      
      public static const const_239:int = 3;
      
      public static const const_272:int = 1;
      
      public static const const_193:int = 5;
      
      public static const const_398:int = 12;
      
      public static const const_313:int = 1;
      
      public static const const_699:int = 11;
      
      public static const const_565:int = 3;
      
      public static const const_1466:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_381:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_381 = new Array();
         var_381.push(new Tab(_navigator,const_272,const_398,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_406));
         var_381.push(new Tab(_navigator,const_247,const_313,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_406));
         var_381.push(new Tab(_navigator,const_318,const_699,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_776));
         var_381.push(new Tab(_navigator,const_239,const_207,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_406));
         var_381.push(new Tab(_navigator,const_193,const_181,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_548));
         setSelectedTab(const_272);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_381)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_381)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_381)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_318;
      }
      
      public function get tabs() : Array
      {
         return var_381;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
