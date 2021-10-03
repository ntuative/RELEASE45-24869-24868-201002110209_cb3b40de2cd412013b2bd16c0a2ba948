package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_646:IAssetLoader;
      
      private var var_1105:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1105 = param1;
         var_646 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_646;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_646 != null)
            {
               if(true)
               {
                  var_646.dispose();
                  var_646 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1105;
      }
   }
}
