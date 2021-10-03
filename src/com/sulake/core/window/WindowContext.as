package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.utils.IInternalWindowServices;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.InternalWindowServices;
   import com.sulake.core.window.utils.KeyboardEventQueue;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static var var_882:MouseEventQueue;
      
      public static var var_1557:IMouseCursor;
      
      public static const const_1415:int = 2;
      
      private static var var_924:Factory;
      
      private static var var_116:IWindowRenderer;
      
      public static var var_1320:KeyboardEventQueue;
      
      public static const const_1583:int = 1;
      
      public static const ERROR_DURING_EVENT_HANDLING:int = 5;
      
      public static const const_1424:int = 0;
      
      public static const const_1585:int = 3;
      
      public static const const_1206:int = 4;
       
      
      protected var var_2239:IWindowFactory;
      
      private var _disposed:Boolean = false;
      
      private var var_612:WindowController;
      
      private var var_600:Date;
      
      protected var var_2238:IWindowParser;
      
      protected var var_884:Error;
      
      protected var var_2240:IInternalWindowServices;
      
      protected var var_89:WindowController;
      
      protected var var_1325:int = -1;
      
      protected var var_81:IDesktopWindow;
      
      private var var_1371:Boolean = false;
      
      protected var var_2327:Boolean = true;
      
      private var var_172:Boolean = false;
      
      protected var var_1056:SubstituteParentController;
      
      private var var_2262:Point;
      
      protected var var_298:DisplayObjectContainer;
      
      private var var_307:IWindowContextStateListener;
      
      private var _name:String;
      
      protected var _localization:ICoreLocalizationManager;
      
      private var var_521:Point;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         var_521 = new Point();
         var_2262 = new Point();
         super();
         _name = param1;
         var_116 = param2;
         _localization = param4;
         var_298 = param5;
         var_2240 = new InternalWindowServices(this,param5);
         var_2239 = param3;
         var_2238 = new WindowParser(this);
         var_600 = new Date();
         if(var_924 == null)
         {
            var_924 = new Factory();
         }
         if(var_882 == null)
         {
            var_882 = new MouseEventQueue(param5);
         }
         if(var_1320 == null)
         {
            var_1320 = new KeyboardEventQueue(param5);
         }
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         var_81 = new DesktopController("_CONTEXT_DESKTOP_" + _name,this,param6);
         var_298.addChild(var_81.getDisplayObject());
         var_298.doubleClickEnabled = true;
         var_298.addEventListener(Event.RESIZE,stageResizedHandler);
         var_89 = WindowController(var_81);
         var_1056 = new SubstituteParentController(this);
         var_307 = param7;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == var_81)
         {
            var_81 = null;
         }
         if(param1.state != WindowState.const_395)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = var_924.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            handleError(WindowContext.const_1206,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = var_1056;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : var_81,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return var_81;
      }
      
      public function render(param1:uint) : void
      {
         var_1371 = true;
         var_116.update(param1);
         var_1371 = false;
      }
      
      public function dispose() : void
      {
         _disposed = true;
         var_298.removeEventListener(Event.RESIZE,stageResizedHandler);
         var_298.removeChild(IGraphicContextHost(var_81).getGraphicContext(true) as DisplayObject);
         var_81.destroy();
         var_81 = null;
         var_1056.destroy();
         var_1056 = null;
         var_924 = null;
         var_116 = null;
         var_89 = null;
         var_600 = null;
         var_307 = null;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(var_81 != null && true)
         {
            if(var_298 is Stage)
            {
               var_81.width = Stage(var_298).stageWidth;
               var_81.height = Stage(var_298).stageHeight;
            }
            else
            {
               var_81.width = var_298.width;
               var_81.height = var_298.height;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var_116.addToRenderQueue(WindowController(param1),param2,param3);
         return true;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return var_2238;
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return var_2239;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_172 = true;
         if(var_884)
         {
            throw var_884;
         }
         var _loc6_:Point = new Point();
         var _loc7_:MouseEventQueue = WindowContext.var_882;
         _loc7_.begin();
         var_521.x = -1;
         var_521.y = -1;
         while(true)
         {
            _loc2_ = _loc7_.next() as MouseEvent;
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_.stageX != var_521.x || _loc2_.stageY != var_521.y)
            {
               var_521.x = _loc2_.stageX;
               var_521.y = _loc2_.stageY;
               _loc5_ = new Array();
               var_81.groupChildrenUnderPoint(var_521,_loc5_);
            }
            _loc3_ = _loc5_ != null ? int(_loc5_.length) : 0;
            if(_loc3_ == 1)
            {
               if(_loc2_.type == MouseEvent.MOUSE_MOVE)
               {
                  if(var_89 != var_81 && true)
                  {
                     var_89.getGlobalPosition(_loc6_);
                     var_89.update(var_89,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                     var_89 = WindowController(var_81);
                  }
               }
            }
            while(--_loc3_ > -1)
            {
               _loc4_ = passMouseEvent(WindowController(_loc5_[_loc3_]),_loc2_);
               if(_loc4_ != null && _loc4_.visible)
               {
                  if(_loc2_.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(_loc4_ != var_89)
                     {
                        if(true)
                        {
                           var_89.getGlobalPosition(_loc6_);
                           var_89.update(var_89,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           _loc4_.getGlobalPosition(_loc6_);
                           _loc4_.update(_loc4_,new MouseEvent(MouseEvent.MOUSE_OVER,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           var_89 = _loc4_;
                        }
                     }
                  }
                  else if(_loc2_.type == MouseEvent.MOUSE_UP || _loc2_.type == MouseEvent.CLICK)
                  {
                     if(var_89 && true)
                     {
                        if(var_307 != null)
                        {
                           var_307.mouseEventReceived(_loc2_.type,var_89);
                        }
                     }
                  }
                  if(_loc2_.altKey)
                  {
                     if(var_89)
                     {
                        Logger.log("HOVER: undefined");
                     }
                  }
                  if(_loc4_ != var_81)
                  {
                     _loc2_.stopPropagation();
                     _loc7_.remove();
                  }
                  break;
               }
            }
         }
         _loc7_.end();
         var_172 = false;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         var_884 = param2;
         var_1325 = param1;
         if(var_2327)
         {
            throw param2;
         }
      }
      
      public function getLastError() : Error
      {
         return var_884;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1557 == null)
         {
            var_1557 = new MouseCursorControl(var_298 as Stage);
         }
         return var_1557;
      }
      
      public function flushError() : void
      {
         var_884 = null;
         var_1325 = -1;
      }
      
      public function getLastErrorCode() : int
      {
         return var_1325;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!param1.testParamFlag(WindowParam.const_32))
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_51))
         {
            return null;
         }
         var _loc3_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc3_);
         var _loc4_:BitmapData = var_116.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc3_,_loc4_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_331))
         {
            if(param1.parent != null)
            {
               return passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         var _loc5_:Boolean = true;
         switch(param2.type)
         {
            case MouseEvent.MOUSE_DOWN:
               var_612 = param1;
               break;
            case MouseEvent.CLICK:
               if(var_612 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_612 = null;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(var_612 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_612 = null;
               }
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(!(param1 is IScrollableWindow) && !(param1 is IScrollbarWindow))
               {
                  return null;
               }
               break;
         }
         if(_loc5_)
         {
            if(!param1.update(param1,param2))
            {
               if(param1.parent)
               {
                  return passMouseEvent(WindowController(param1.parent),param2);
               }
            }
         }
         return param1;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return var_81.findChildByName(param1);
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return var_2240;
      }
   }
}
