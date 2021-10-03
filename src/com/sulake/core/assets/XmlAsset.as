package com.sulake.core.assets
{
   import flash.utils.ByteArray;
   
   public class XmlAsset implements IAsset
   {
       
      
      private var var_17:XML;
      
      private var _disposed:Boolean = false;
      
      private var var_1087:AssetTypeDeclaration;
      
      private var var_883:String;
      
      public function XmlAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1087 = param1;
         var_883 = param2;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1087;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get url() : String
      {
         return var_883;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1 is Class)
         {
            _loc2_ = new param1() as ByteArray;
            var_17 = new XML(_loc2_.readUTFBytes(_loc2_.length));
            return;
         }
         if(param1 is ByteArray)
         {
            _loc2_ = param1 as ByteArray;
            var_17 = new XML(_loc2_.readUTFBytes(_loc2_.length));
            return;
         }
         if(param1 is String)
         {
            var_17 = new XML(param1 as String);
            return;
         }
         if(param1 is XML)
         {
            var_17 = param1 as XML;
            return;
         }
         if(param1 is XmlAsset)
         {
            var_17 = XmlAsset(param1).var_17;
            return;
         }
      }
      
      public function get content() : Object
      {
         return var_17 as Object;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is XmlAsset)
         {
            var_17 = XmlAsset(param1).var_17;
            return;
         }
         throw Error("Provided asset is not of type XmlAsset!");
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_17 = null;
            var_1087 = null;
            var_883 = null;
         }
      }
   }
}
