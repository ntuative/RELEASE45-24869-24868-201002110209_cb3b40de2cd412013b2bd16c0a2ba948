package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2303:Boolean;
      
      private var var_1531:int;
      
      private var var_2301:String = "";
      
      private var var_66:ITextFieldWindow;
      
      private var var_2302:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1073:String = "";
      
      private var var_145:IWindowContainer;
      
      private var var_295:Boolean;
      
      private var var_1286:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_66 = param2;
         var_1531 = param3;
         var_1286 = param4;
         if(param5 != null)
         {
            var_295 = true;
            var_1073 = param5;
            var_66.text = param5;
         }
         Util.setProcDirectly(var_66,onInputClick);
         var_66.addEventListener(WindowKeyboardEvent.const_117,checkEnterPress);
         var_66.addEventListener(WindowEvent.const_121,checkMaxLen);
         this.var_2303 = var_66.textBackground;
         this._orgTextBackgroundColor = var_66.textBackgroundColor;
         this.var_2302 = var_66.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1286 != null)
            {
               var_1286();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1073 != null)
         {
            var_66.text = var_1073;
            var_295 = true;
         }
         else
         {
            var_66.text = "";
            var_295 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_66;
      }
      
      public function restoreBackground() : void
      {
         var_66.textBackground = this.var_2303;
         var_66.textBackgroundColor = this._orgTextBackgroundColor;
         var_66.textColor = this.var_2302;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_202)
         {
            return;
         }
         if(!var_295)
         {
            return;
         }
         var_66.text = var_2301;
         var_295 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_145 != null)
         {
            var_145.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_66.textBackground = true;
         var_66.textBackgroundColor = 4294021019;
         var_66.textColor = 4278190080;
         if(this.var_145 == null)
         {
            this.var_145 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_145,"popup_arrow_down",true,null,0);
            IWindowContainer(var_66.parent).addChild(this.var_145);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_145.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_145.findChildByName("border").width = _loc2_.width + 15;
         var_145.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_66.getLocalPosition(_loc3_);
         this.var_145.x = _loc3_.x;
         this.var_145.y = _loc3_.y - this.var_145.height + 3;
         var _loc4_:IWindow = var_145.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_145.width / 2 - _loc4_.width / 2;
         var_145.x += (0 - 0) / 2;
         this.var_145.visible = true;
      }
      
      public function getText() : String
      {
         if(var_295)
         {
            return var_2301;
         }
         return var_66.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_295 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_295 = false;
         var_66.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1531)
         {
            var_66.text = _loc2_.substring(0,var_1531);
         }
      }
   }
}
