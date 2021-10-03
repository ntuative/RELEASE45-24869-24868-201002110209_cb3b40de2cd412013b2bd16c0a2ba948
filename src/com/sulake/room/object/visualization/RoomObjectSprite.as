package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1115:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1590:Boolean = false;
      
      private var var_1659:String = "normal";
      
      private var var_1105:String = "";
      
      private var _instanceId:int = 0;
      
      private var var_324:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1642:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_968:Boolean = false;
      
      private var var_967:Boolean = false;
      
      private var var_1592:Boolean = false;
      
      private var _offset:Point;
      
      private var var_1660:Boolean = true;
      
      private var _width:int = 0;
      
      private var var_955:Number = 0;
      
      private var var_1591:String = "";
      
      private var var_789:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
         _instanceId = var_1115++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_967 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1592 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_789 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1659 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1591 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1105 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1590;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get uid() : int
      {
         return _instanceId;
      }
      
      public function get relativeDepth() : Number
      {
         return var_955;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1642;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1660 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_324;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1590 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_968;
      }
      
      public function get flipV() : Boolean
      {
         return var_967;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1592;
      }
      
      public function get blendMode() : String
      {
         return var_1659;
      }
      
      public function get tag() : String
      {
         return var_1591;
      }
      
      public function get assetName() : String
      {
         return var_1105;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_955 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1660;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1642 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_789 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_324 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_789;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_968 = param1;
         ++_updateID;
      }
   }
}
