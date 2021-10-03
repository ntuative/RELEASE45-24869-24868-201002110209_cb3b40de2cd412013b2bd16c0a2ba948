package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_177:String = "e";
      
      public static const const_57:String = "i";
      
      public static const const_58:String = "s";
       
      
      private var var_1017:String;
      
      private var var_1271:String;
      
      private var var_1272:int;
      
      private var var_2220:int;
      
      private var var_1016:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1271 = param1.readString();
         var_2220 = param1.readInteger();
         var_1017 = param1.readString();
         var_1016 = param1.readInteger();
         var_1272 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1016;
      }
      
      public function get productType() : String
      {
         return var_1271;
      }
      
      public function get expiration() : int
      {
         return var_1272;
      }
      
      public function get furniClassId() : int
      {
         return var_2220;
      }
      
      public function get extraParam() : String
      {
         return var_1017;
      }
   }
}
