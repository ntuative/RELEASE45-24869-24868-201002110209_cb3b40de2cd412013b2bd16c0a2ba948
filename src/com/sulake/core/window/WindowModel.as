package com.sulake.core.window
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.utils.IRectLimiter;
   import com.sulake.core.window.utils.WindowRectLimits;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowModel implements IDisposable
   {
       
      
      protected var _disposed:Boolean = false;
      
      protected var var_349:Rectangle;
      
      protected var var_13:uint;
      
      protected var var_134:Rectangle;
      
      protected var _type:uint;
      
      protected var var_1061:Boolean = true;
      
      protected var var_135:Rectangle;
      
      protected var var_590:uint = 16777215;
      
      protected var var_30:uint;
      
      protected var var_73:uint;
      
      protected var var_324:Boolean = true;
      
      protected var var_300:String = "";
      
      protected var var_67:WindowRectLimits;
      
      protected var var_1333:uint;
      
      protected var var_714:Boolean = false;
      
      protected var var_394:Number = 1;
      
      protected var var_47:Rectangle;
      
      protected var _id:uint;
      
      protected var _name:String;
      
      protected var var_5:Rectangle;
      
      protected var _context:WindowContext;
      
      protected var var_591:Array;
      
      public function WindowModel(param1:uint, param2:String, param3:uint, param4:uint, param5:uint, param6:WindowContext, param7:Rectangle, param8:Array = null)
      {
         super();
         _id = param1;
         _name = param2;
         _type = param3;
         var_13 = param5;
         var_30 = WindowState.const_61;
         var_73 = param4;
         var_591 = param8 == null ? new Array() : param8;
         _context = param6;
         var_5 = param7.clone();
         var_349 = param7.clone();
         var_47 = param7.clone();
         var_135 = new Rectangle();
         var_134 = null;
         var_67 = new WindowRectLimits(this as IWindow);
      }
      
      public function getMinHeight() : int
      {
         return var_67.minHeight;
      }
      
      public function testTypeFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (_type & param2 ^ param1) == 0;
         }
         return (_type & param1) == param1;
      }
      
      public function getMinWidth() : int
      {
         return var_67.minWidth;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get param() : uint
      {
         return var_13;
      }
      
      public function get state() : uint
      {
         return var_30;
      }
      
      public function getMaximizedWidth() : int
      {
         return var_134.width;
      }
      
      public function getMinimizedHeight() : int
      {
         return var_135.height;
      }
      
      public function get limits() : IRectLimiter
      {
         return var_67;
      }
      
      public function get tags() : Array
      {
         return var_591;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function testStateFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (var_30 & param2 ^ param1) == 0;
         }
         return (var_30 & param1) == param1;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            var_5 = null;
            var_30 = WindowState.const_395;
            _disposed = true;
            var_591 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get height() : int
      {
         return var_5.height;
      }
      
      public function get position() : Point
      {
         return var_5.topLeft;
      }
      
      public function get background() : Boolean
      {
         return var_714;
      }
      
      public function get context() : IWindowContext
      {
         return _context;
      }
      
      public function getMaximizedHeight() : int
      {
         return var_134.height;
      }
      
      public function get style() : uint
      {
         return var_73;
      }
      
      public function getMaxWidth() : int
      {
         return var_67.maxWidth;
      }
      
      public function invalidate(param1:Rectangle = null) : void
      {
      }
      
      public function testStyleFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (var_73 & param2 ^ param1) == 0;
         }
         return (var_73 & param1) == param1;
      }
      
      public function testParamFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (var_13 & param2 ^ param1) == 0;
         }
         return (var_13 & param1) == param1;
      }
      
      public function hasMaxHeight() : Boolean
      {
         return false;
      }
      
      public function get type() : uint
      {
         return _type;
      }
      
      public function get clipping() : Boolean
      {
         return var_1061;
      }
      
      public function setMinWidth(param1:int) : int
      {
         var _loc2_:int = 0;
         var_67.minWidth = param1;
         return _loc2_;
      }
      
      public function get width() : int
      {
         return var_5.width;
      }
      
      public function hasMinHeight() : Boolean
      {
         return false;
      }
      
      public function get blend() : Number
      {
         return var_394;
      }
      
      public function getInitialHeight() : int
      {
         return var_349.height;
      }
      
      public function getMinimizedWidth() : int
      {
         return var_135.width;
      }
      
      public function setMinHeight(param1:int) : int
      {
         var _loc2_:int = 0;
         var_67.minHeight = param1;
         return _loc2_;
      }
      
      public function getInitialWidth() : int
      {
         return var_349.width;
      }
      
      public function getPreviousWidth() : int
      {
         return var_47.width;
      }
      
      public function hasMinWidth() : Boolean
      {
         return false;
      }
      
      public function get color() : uint
      {
         return var_590;
      }
      
      public function get caption() : String
      {
         return var_300;
      }
      
      public function setMaxHeight(param1:int) : int
      {
         var _loc2_:int = 0;
         var_67.maxHeight = param1;
         return _loc2_;
      }
      
      public function get rectangle() : Rectangle
      {
         return var_5;
      }
      
      public function setMaxWidth(param1:int) : int
      {
         var _loc2_:int = 0;
         var_67.maxWidth = param1;
         return _loc2_;
      }
      
      public function get visible() : Boolean
      {
         return var_324;
      }
      
      public function getMaxHeight() : int
      {
         return var_67.maxHeight;
      }
      
      public function get x() : int
      {
         return var_5.x;
      }
      
      public function get y() : int
      {
         return var_5.y;
      }
      
      public function getPreviousHeight() : int
      {
         return var_47.height;
      }
      
      public function hasMaxWidth() : Boolean
      {
         return false;
      }
   }
}
