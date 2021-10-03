package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_299:Timer;
      
      protected var var_888:String;
      
      protected var var_889:uint;
      
      protected var var_1058:Point;
      
      protected var var_229:IToolTipWindow;
      
      protected var var_1059:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1058 = new Point();
         var_1059 = new Point(20,20);
         var_889 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_299 != null)
         {
            var_299.stop();
            var_299.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_299 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1058);
            if(var_229 != null && true)
            {
               var_229.x = param1 + var_1059.x;
               var_229.y = param2 + var_1059.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_299 != null)
         {
            var_299.reset();
         }
         if(_window && true)
         {
            if(var_229 == null || false)
            {
               var_229 = _window.context.create("undefined::ToolTip",var_888,WindowType.WINDOW_TYPE_TOOLTIP,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_229.x = _loc2_.x + var_1058.x + var_1059.x;
            var_229.y = _loc2_.y + var_1058.y + var_1059.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_888 = IInteractiveWindow(param1).toolTipCaption;
               var_889 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_888 = param1.caption;
               var_889 = 500;
            }
            _mouse.x = var_111.mouseX;
            _mouse.y = var_111.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1058);
            if(var_888 != null && var_888 != "")
            {
               if(var_299 == null)
               {
                  var_299 = new Timer(var_889,1);
                  var_299.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_299.reset();
               var_299.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_229 != null && true)
         {
            var_229.destroy();
            var_229 = null;
         }
      }
   }
}
