package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1977:XML;
      
      private var var_1464:ITextWindow;
      
      private var var_1465:ITextWindow;
      
      private var var_1980:XML;
      
      private var var_808:IWindowContainer;
      
      private var var_2281:ITextWindow;
      
      private var var_1979:String = "";
      
      private var var_2349:IButtonWindow;
      
      private var var_1978:XML;
      
      private var var_1466:ITextWindow;
      
      private var var_1981:XML;
      
      private var var_807:IButtonWindow;
      
      private var var_71:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_356:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1980) as IWindowContainer;
               break;
            case Offer.const_353:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1981) as IWindowContainer;
               break;
            case Offer.const_430:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1977) as IWindowContainer;
               break;
            case Offer.const_683:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1978) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_808 != null)
            {
               _window.removeChild(var_808);
               var_808.dispose();
            }
            var_808 = _loc2_;
            _window.addChild(_loc2_);
            var_808.x = 0;
            var_808.y = 0;
         }
         var_1466 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1465 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1464 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2281 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_807 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_807 != null)
         {
            var_807.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_807.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_71 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_71,page,var_1979);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1980 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1981 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1977 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1978 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_770,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1979 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_71 = param1.offer;
         attachStub(var_71.priceType);
         if(var_1466 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_71.priceInCredits));
            var_1466.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1465 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_71.priceInPixels));
            var_1465.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1464 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_71.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_71.priceInPixels));
            var_1464.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_807 != null)
         {
            var_807.enable();
         }
      }
   }
}
