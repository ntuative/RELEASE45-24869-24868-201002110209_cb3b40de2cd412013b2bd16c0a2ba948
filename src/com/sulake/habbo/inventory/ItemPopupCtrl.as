package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1021:int = 100;
      
      private static const const_1020:int = 200;
      
      private static const const_1019:int = 180;
      
      public static const const_931:int = 1;
      
      public static const const_414:int = 2;
      
      private static const const_1018:int = 250;
      
      private static const const_724:int = 5;
       
      
      private var var_520:BitmapData;
      
      private var var_276:Timer;
      
      private var var_6:IWindowContainer;
      
      private var var_611:BitmapData;
      
      private var var_275:Timer;
      
      private var var_61:IWindowContainer;
      
      private var var_1369:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_275 = new Timer(const_1018,1);
         var_276 = new Timer(const_1021,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_61 = param1;
         var_61.visible = false;
         _assets = param2;
         var_275.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_276.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_611 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_520 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_61.visible = false;
         var_276.reset();
         var_275.reset();
         if(var_6 != null)
         {
            var_6.removeChild(var_61);
         }
      }
      
      public function hideDelayed() : void
      {
         var_276.reset();
         var_275.reset();
         var_276.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_275 != null)
         {
            var_275.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_275.stop();
            var_275 = null;
         }
         if(var_276 != null)
         {
            var_276.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_276.stop();
            var_276 = null;
         }
         _assets = null;
         var_61 = null;
         var_6 = null;
         var_520 = null;
         var_611 = null;
      }
      
      public function showDelayed() : void
      {
         var_276.reset();
         var_275.reset();
         var_275.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_61 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_6 != null)
         {
            var_6.removeChild(var_61);
         }
         var_6 = param1;
         var_1369 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_61.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_61.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1019,param3.width),Math.min(const_1020,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_61.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_61 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_61.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_931:
               _loc2_.bitmap = var_611.clone();
               _loc2_.width = var_611.width;
               _loc2_.height = var_611.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_414:
               _loc2_.bitmap = var_520.clone();
               _loc2_.width = var_520.width;
               _loc2_.height = var_520.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_276.reset();
         var_275.reset();
         if(var_6 == null)
         {
            return;
         }
         var_61.visible = true;
         var_6.addChild(var_61);
         refreshArrow(var_1369);
         switch(var_1369)
         {
            case const_931:
               var_61.x = 0 - const_724;
               break;
            case const_414:
               var_61.x = var_6.width + const_724;
         }
         var_61.y = (0 - 0) / 2;
      }
   }
}
