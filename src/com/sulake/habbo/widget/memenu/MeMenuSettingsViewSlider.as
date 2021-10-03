package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MeMenuSettingsViewSlider
   {
       
      
      private var var_724:MeMenuSettingsView;
      
      private var var_2332:int;
      
      private var var_510:BitmapData;
      
      private var var_902:Number = 1;
      
      private var var_1361:int;
      
      private var var_606:Number = 0;
      
      private var _sliderContainer:IWindowContainer;
      
      private var var_509:BitmapData;
      
      public function MeMenuSettingsViewSlider(param1:MeMenuSettingsView, param2:IWindowContainer, param3:IAssetLibrary, param4:Number = 0, param5:Number = 1)
      {
         super();
         var_724 = param1;
         _sliderContainer = param2;
         var_606 = param4;
         var_902 = param5;
         storeAssets(param3);
         displaySlider();
      }
      
      private function buttonProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_419)
         {
            return;
         }
         var_724.saveVolume(getValue(param2.x),false);
      }
      
      private function displaySlider() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_sliderContainer == null)
         {
            return;
         }
         _loc2_ = _sliderContainer.findChildByName("slider_base") as IBitmapWrapperWindow;
         if(_loc2_ != null && var_509 != null)
         {
            _loc2_.bitmap = new BitmapData(var_509.width,var_509.height,true,16777215);
            _loc2_.bitmap.copyPixels(var_509,var_509.rect,new Point(0,0),null,null,true);
         }
         _loc1_ = _sliderContainer.findChildByName("slider_movement_area") as IWindowContainer;
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.findChildByName("slider_button") as IBitmapWrapperWindow;
            if(_loc2_ != null && var_510 != null)
            {
               _loc2_.bitmap = new BitmapData(var_510.width,var_510.height,true,16777215);
               _loc2_.bitmap.copyPixels(var_510,var_510.rect,new Point(0,0),null,null,true);
               _loc2_.procedure = buttonProcedure;
               var_1361 = _loc1_.width - _loc2_.width;
            }
         }
      }
      
      private function storeAssets(param1:IAssetLibrary) : void
      {
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_base"));
         var_509 = BitmapData(_loc2_.content);
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_button"));
         var_510 = BitmapData(_loc2_.content);
      }
      
      public function set max(param1:Number) : void
      {
         var_902 = param1;
         setValue(var_724.volume);
      }
      
      public function dispose() : void
      {
         var_724 = null;
         _sliderContainer = null;
         var_509 = null;
         var_510 = null;
      }
      
      private function getSliderPosition(param1:Number) : int
      {
         return int(var_1361 * (Number(param1 - var_606) / (var_902 - var_606)));
      }
      
      public function set min(param1:Number) : void
      {
         var_606 = param1;
         setValue(var_724.volume);
      }
      
      public function setValue(param1:Number) : void
      {
         if(_sliderContainer == null)
         {
            return;
         }
         var _loc2_:IWindow = _sliderContainer.findChildByName("slider_button");
         if(_loc2_ != null)
         {
            _loc2_.x = getSliderPosition(param1);
         }
      }
      
      private function getValue(param1:Number) : Number
      {
         return param1 / var_1361 * (var_902 - var_606) + var_606;
      }
   }
}