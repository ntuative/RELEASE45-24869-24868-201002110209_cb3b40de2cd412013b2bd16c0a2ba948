package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1347:String = "WN_CREATED";
      
      public static const const_879:String = "WN_DISABLE";
      
      public static const const_971:String = "WN_DEACTIVATED";
      
      public static const const_804:String = "WN_OPENED";
      
      public static const const_892:String = "WN_CLOSED";
      
      public static const const_913:String = "WN_DESTROY";
      
      public static const const_1439:String = "WN_ARRANGED";
      
      public static const const_373:String = "WN_PARENT_RESIZED";
      
      public static const const_989:String = "WN_ENABLE";
      
      public static const const_800:String = "WN_RELOCATE";
      
      public static const const_868:String = "WN_FOCUS";
      
      public static const const_968:String = "WN_PARENT_RELOCATED";
      
      public static const const_429:String = "WN_PARAM_UPDATED";
      
      public static const const_587:String = "WN_PARENT_ACTIVATED";
      
      public static const const_171:String = "WN_RESIZED";
      
      public static const const_878:String = "WN_CLOSE";
      
      public static const const_845:String = "WN_PARENT_REMOVED";
      
      public static const const_225:String = "WN_CHILD_RELOCATED";
      
      public static const const_488:String = "WN_ENABLED";
      
      public static const const_238:String = "WN_CHILD_RESIZED";
      
      public static const const_963:String = "WN_MINIMIZED";
      
      public static const const_647:String = "WN_DISABLED";
      
      public static const const_196:String = "WN_CHILD_ACTIVATED";
      
      public static const const_333:String = "WN_STATE_UPDATED";
      
      public static const const_682:String = "WN_UNSELECTED";
      
      public static const const_442:String = "WN_STYLE_UPDATED";
      
      public static const const_1483:String = "WN_UPDATE";
      
      public static const const_377:String = "WN_PARENT_ADDED";
      
      public static const const_591:String = "WN_RESIZE";
      
      public static const const_611:String = "WN_CHILD_REMOVED";
      
      public static const const_1559:String = "";
      
      public static const const_911:String = "WN_RESTORED";
      
      public static const const_291:String = "WN_SELECTED";
      
      public static const const_785:String = "WN_MINIMIZE";
      
      public static const const_946:String = "WN_FOCUSED";
      
      public static const const_1186:String = "WN_LOCK";
      
      public static const const_306:String = "WN_CHILD_ADDED";
      
      public static const const_961:String = "WN_UNFOCUSED";
      
      public static const const_363:String = "WN_RELOCATED";
      
      public static const const_827:String = "WN_DEACTIVATE";
      
      public static const const_1129:String = "WN_CRETAE";
      
      public static const const_981:String = "WN_RESTORE";
      
      public static const const_295:String = "WN_ACTVATED";
      
      public static const const_1192:String = "WN_LOCKED";
      
      public static const const_453:String = "WN_SELECT";
      
      public static const const_948:String = "WN_MAXIMIZE";
      
      public static const const_779:String = "WN_OPEN";
      
      public static const const_658:String = "WN_UNSELECT";
      
      public static const const_1537:String = "WN_ARRANGE";
      
      public static const const_1112:String = "WN_UNLOCKED";
      
      public static const const_1448:String = "WN_UPDATED";
      
      public static const const_969:String = "WN_ACTIVATE";
      
      public static const const_1172:String = "WN_UNLOCK";
      
      public static const const_890:String = "WN_MAXIMIZED";
      
      public static const const_851:String = "WN_DESTROYED";
      
      public static const const_855:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1558,cancelable);
      }
   }
}
