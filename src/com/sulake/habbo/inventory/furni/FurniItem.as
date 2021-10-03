package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1884:int;
      
      private var var_1888:Boolean;
      
      private var var_1886:int;
      
      private var var_1324:String;
      
      private var var_1887:Boolean = false;
      
      private var var_1604:int;
      
      private var var_412:int;
      
      private var var_986:String;
      
      private var var_1655:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1088:int;
      
      private var var_1889:Boolean;
      
      private var var_1885:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1884 = param1;
         var_986 = param2;
         _objId = param3;
         var_1088 = param4;
         var_1324 = param5;
         var_1888 = param6;
         var_1889 = param7;
         var_1604 = param8;
         var_1655 = param9;
         var_1886 = param10;
         var_412 = -1;
      }
      
      public function get songId() : int
      {
         return var_1886;
      }
      
      public function get iconCallbackId() : int
      {
         return var_412;
      }
      
      public function get expiryTime() : int
      {
         return var_1604;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1885 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1887 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_412 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1889;
      }
      
      public function get slotId() : String
      {
         return var_1655;
      }
      
      public function get classId() : int
      {
         return var_1088;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1888;
      }
      
      public function get stuffData() : String
      {
         return var_1324;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1884;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1887;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1885;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_986;
      }
   }
}
