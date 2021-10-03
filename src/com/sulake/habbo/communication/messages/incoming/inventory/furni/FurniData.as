package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1324:String;
      
      private var var_986:String;
      
      private var var_1974:Boolean;
      
      private var var_1388:int;
      
      private var var_1884:int;
      
      private var var_1975:Boolean;
      
      private var var_1655:String = "";
      
      private var var_1888:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1088:int;
      
      private var var_1889:Boolean;
      
      private var var_1886:int = -1;
      
      private var var_1604:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1884 = param1;
         var_986 = param2;
         _objId = param3;
         var_1088 = param4;
         _category = param5;
         var_1324 = param6;
         var_1974 = param7;
         var_1888 = param8;
         var_1889 = param9;
         var_1975 = param10;
         var_1604 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1655;
      }
      
      public function get extra() : int
      {
         return var_1388;
      }
      
      public function get classId() : int
      {
         return var_1088;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1975;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1974;
      }
      
      public function get stripId() : int
      {
         return var_1884;
      }
      
      public function get stuffData() : String
      {
         return var_1324;
      }
      
      public function get songId() : int
      {
         return var_1886;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1655 = param1;
         var_1388 = param2;
      }
      
      public function get itemType() : String
      {
         return var_986;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1604;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1889;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1888;
      }
   }
}
