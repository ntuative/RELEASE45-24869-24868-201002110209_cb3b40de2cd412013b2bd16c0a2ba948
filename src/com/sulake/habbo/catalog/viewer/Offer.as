package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_805:String = "price_type_none";
      
      public static const const_344:String = "pricing_model_multi";
      
      public static const const_356:String = "price_type_credits";
      
      public static const const_430:String = "price_type_credits_and_pixels";
      
      public static const const_382:String = "pricing_model_bundle";
      
      public static const const_457:String = "pricing_model_single";
      
      public static const const_683:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1310:String = "pricing_model_unknown";
      
      public static const const_353:String = "price_type_pixels";
       
      
      private var var_758:int;
      
      private var _offerId:int;
      
      private var var_757:int;
      
      private var var_374:String;
      
      private var var_531:String;
      
      private var var_1734:int;
      
      private var var_658:ICatalogPage;
      
      private var var_1141:String;
      
      private var var_373:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1141 = param1.localizationId;
         var_758 = param1.priceInCredits;
         var_757 = param1.priceInPixels;
         var_658 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_374;
      }
      
      public function get page() : ICatalogPage
      {
         return var_658;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1734 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_373;
      }
      
      public function get localizationId() : String
      {
         return var_1141;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_757;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1141 = "";
         var_758 = 0;
         var_757 = 0;
         var_658 = null;
         if(var_373 != null)
         {
            var_373.dispose();
            var_373 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_531;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1734;
      }
      
      public function get priceInCredits() : int
      {
         return var_758;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_374 = const_457;
            }
            else
            {
               var_374 = const_344;
            }
         }
         else if(param1.length > 1)
         {
            var_374 = const_382;
         }
         else
         {
            var_374 = const_1310;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_374)
         {
            case const_457:
               var_373 = new SingleProductContainer(this,param1);
               break;
            case const_344:
               var_373 = new MultiProductContainer(this,param1);
               break;
            case const_382:
               var_373 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_374);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_758 > 0 && var_757 > 0)
         {
            var_531 = const_430;
         }
         else if(var_758 > 0)
         {
            var_531 = const_356;
         }
         else if(var_757 > 0)
         {
            var_531 = const_353;
         }
         else
         {
            var_531 = const_805;
         }
      }
   }
}
