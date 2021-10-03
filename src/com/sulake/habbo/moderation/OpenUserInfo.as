package com.sulake.habbo.moderation
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   
   public class OpenUserInfo
   {
       
      
      private var _userId:int;
      
      private var var_41:ModerationManager;
      
      private var var_46:IFrameWindow;
      
      public function OpenUserInfo(param1:IFrameWindow, param2:ModerationManager, param3:IWindow, param4:int)
      {
         super();
         var_46 = param1;
         var_41 = param2;
         _userId = param4;
         param3.procedure = onClick;
      }
      
      private function onClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_41.windowTracker.show(new UserInfoFrameCtrl(var_41,_userId),var_46,false,false,true);
      }
   }
}
