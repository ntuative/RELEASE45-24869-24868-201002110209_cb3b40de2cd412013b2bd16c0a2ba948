package com.sulake.habbo.ui
{
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.geom.Rectangle;
   
   public class DesktopLayoutManager
   {
       
      
      private const const_1619:String = "room_widget";
      
      private const const_1623:String = "room_desktop_layout_container";
      
      private const const_1088:String = "room_view";
      
      private var var_682:int = 50;
      
      private var var_2296:XML = null;
      
      private var var_56:IWindowContainer;
      
      public function DesktopLayoutManager()
      {
         super();
      }
      
      public function addRoomView(param1:IWindow) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:IWindowContainer = var_56.getChildByTag(const_1088) as IWindowContainer;
         if(_loc2_ == null)
         {
            return false;
         }
         _loc2_.addChild(param1);
         return true;
      }
      
      public function get roomViewRect() : Rectangle
      {
         if(var_56 == null)
         {
            return null;
         }
         var _loc1_:IWindowContainer = var_56.findChildByTag(const_1088) as IWindowContainer;
         if(_loc1_ != null)
         {
            return _loc1_.rectangle.clone();
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(var_56 != null)
         {
            var_56.dispose();
         }
      }
      
      public function set toolbarSize(param1:int) : void
      {
         var_682 = param1;
      }
      
      public function set toolbarOrientation(param1:String) : void
      {
         var _loc2_:Rectangle = new Rectangle();
         switch(param1)
         {
            case "LEFT":
               _loc2_.x = var_682;
               _loc2_.width = var_56.desktop.width - var_682;
               _loc2_.y = 0;
               _loc2_.height = var_56.desktop.height;
               break;
            case "RIGHT":
               _loc2_.x = 0;
               _loc2_.width = var_56.desktop.width - var_682;
               _loc2_.y = 0;
               _loc2_.height = var_56.desktop.height;
               break;
            case "TOP":
               _loc2_.x = 0;
               _loc2_.width = var_56.desktop.width;
               _loc2_.y = var_682;
               _loc2_.height = var_56.desktop.height - var_682;
               break;
            case "BOTTOM":
               _loc2_.x = 0;
               _loc2_.width = var_56.desktop.width;
               _loc2_.y = 0;
               _loc2_.height = var_56.desktop.height - var_682;
         }
         if(!_loc2_.isEmpty())
         {
            var_56.rectangle = _loc2_;
         }
      }
      
      public function setLayout(param1:XML, param2:IHabboWindowManager) : void
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         if(param1 == null || param2 == null)
         {
            throw new Error("Unable to set room desktop layout.");
         }
         var_2296 = param1.copy();
         var_56 = (param2 as ICoreWindowManager).buildFromXML(param1,0) as IWindowContainer;
         if(var_56 == null)
         {
            throw new Error("Failed to build layout from XML.");
         }
         var_56.width = var_56.desktop.width;
         var_56.height = var_56.desktop.height;
         var _loc3_:IWindowContainer = var_56.desktop as IWindowContainer;
         _loc3_.addChildAt(var_56,0);
         var _loc5_:int = 0;
         while(_loc5_ < var_56.numChildren)
         {
            _loc4_ = var_56.getChildAt(_loc5_);
            _loc6_ = false || false;
            if(_loc4_.testParamFlag(_loc6_))
            {
               _loc4_.addEventListener(WindowEvent.const_315,trimContainer);
            }
            _loc5_++;
         }
      }
      
      private function trimContainer(param1:WindowEvent) : void
      {
         var _loc2_:IWindowContainer = param1.window as IWindowContainer;
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.numChildren != 1)
         {
            return;
         }
         var _loc3_:IWindow = _loc2_.getChildAt(0);
         if(_loc3_ == null)
         {
            return;
         }
         _loc2_.width = _loc3_.width;
         _loc2_.height = _loc3_.height;
      }
      
      public function addWidgetWindow(param1:IWindow) : Boolean
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:Array = param1.tags;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(String(_loc2_[_loc4_]).indexOf(const_1619) == 0)
            {
               _loc3_ = _loc2_[_loc4_] as String;
               break;
            }
            _loc4_++;
         }
         if(_loc3_ == null)
         {
            return false;
         }
         var _loc5_:IWindowContainer = var_56.getChildByTag(_loc3_) as IWindowContainer;
         if(_loc5_ == null)
         {
            return false;
         }
         param1.x = 0;
         param1.y = 0;
         _loc5_.addChild(param1);
         _loc5_.width = param1.width;
         _loc5_.height = param1.height;
         return true;
      }
      
      public function getRoomView() : IWindow
      {
         if(var_56 == null)
         {
            return null;
         }
         var _loc1_:IWindowContainer = var_56.findChildByTag(const_1088) as IWindowContainer;
         if(_loc1_ != null && _loc1_.numChildren > 0)
         {
            return _loc1_.getChildAt(0);
         }
         return null;
      }
   }
}
