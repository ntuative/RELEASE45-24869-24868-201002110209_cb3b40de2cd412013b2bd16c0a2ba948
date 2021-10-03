package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_315:String = "WE_CHILD_RESIZED";
      
      public static const const_1130:String = "WE_CLOSE";
      
      public static const const_1252:String = "WE_DESTROY";
      
      public static const const_121:String = "WE_CHANGE";
      
      public static const const_1333:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1506:String = "WE_PARENT_RESIZE";
      
      public static const const_71:String = "WE_UPDATE";
      
      public static const const_1234:String = "WE_MAXIMIZE";
      
      public static const const_370:String = "WE_DESTROYED";
      
      public static const const_950:String = "WE_UNSELECT";
      
      public static const const_1150:String = "WE_MAXIMIZED";
      
      public static const const_1476:String = "WE_UNLOCKED";
      
      public static const const_422:String = "WE_CHILD_REMOVED";
      
      public static const const_145:String = "WE_OK";
      
      public static const const_26:String = "WE_RESIZED";
      
      public static const const_1262:String = "WE_ACTIVATE";
      
      public static const const_231:String = "WE_ENABLED";
      
      public static const const_341:String = "WE_CHILD_RELOCATED";
      
      public static const const_1344:String = "WE_CREATE";
      
      public static const const_505:String = "WE_SELECT";
      
      public static const const_138:String = "";
      
      public static const const_1493:String = "WE_LOCKED";
      
      public static const const_1519:String = "WE_PARENT_RELOCATE";
      
      public static const const_1575:String = "WE_CHILD_REMOVE";
      
      public static const const_1473:String = "WE_CHILD_RELOCATE";
      
      public static const const_1484:String = "WE_LOCK";
      
      public static const const_202:String = "WE_FOCUSED";
      
      public static const const_687:String = "WE_UNSELECTED";
      
      public static const const_977:String = "WE_DEACTIVATED";
      
      public static const const_1155:String = "WE_MINIMIZED";
      
      public static const const_1420:String = "WE_ARRANGED";
      
      public static const const_1511:String = "WE_UNLOCK";
      
      public static const const_1556:String = "WE_ATTACH";
      
      public static const const_1225:String = "WE_OPEN";
      
      public static const const_1284:String = "WE_RESTORE";
      
      public static const const_1417:String = "WE_PARENT_RELOCATED";
      
      public static const const_1120:String = "WE_RELOCATE";
      
      public static const const_1482:String = "WE_CHILD_RESIZE";
      
      public static const const_1516:String = "WE_ARRANGE";
      
      public static const const_1332:String = "WE_OPENED";
      
      public static const const_1165:String = "WE_CLOSED";
      
      public static const const_1430:String = "WE_DETACHED";
      
      public static const const_1569:String = "WE_UPDATED";
      
      public static const const_1240:String = "WE_UNFOCUSED";
      
      public static const const_419:String = "WE_RELOCATED";
      
      public static const const_1360:String = "WE_DEACTIVATE";
      
      public static const const_203:String = "WE_DISABLED";
      
      public static const const_580:String = "WE_CANCEL";
      
      public static const const_526:String = "WE_ENABLE";
      
      public static const const_1295:String = "WE_ACTIVATED";
      
      public static const const_1113:String = "WE_FOCUS";
      
      public static const const_1523:String = "WE_DETACH";
      
      public static const const_1220:String = "WE_RESTORED";
      
      public static const const_1324:String = "WE_UNFOCUS";
      
      public static const const_35:String = "WE_SELECTED";
      
      public static const const_1119:String = "WE_PARENT_RESIZED";
      
      public static const const_1328:String = "WE_CREATED";
      
      public static const const_1507:String = "WE_ATTACHED";
      
      public static const const_1213:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1558:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1332:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1558 = param3;
         var_1332 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1332;
      }
      
      public function get related() : IWindow
      {
         return var_1558;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1332 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
