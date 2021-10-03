package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_872:int;
      
      private var _right:int;
      
      private var var_871:int;
      
      private var var_873:int;
      
      private var var_170:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_871 = param1;
         var_873 = param2;
         _right = param3;
         var_872 = param4;
         var_170 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_872 = param1;
         var_170(this);
      }
      
      public function get left() : int
      {
         return var_871;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_871 == 0 && _right == 0 && var_873 == 0 && var_872 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_873 = param1;
         var_170(this);
      }
      
      public function get top() : int
      {
         return var_873;
      }
      
      public function set left(param1:int) : void
      {
         var_871 = param1;
         var_170(this);
      }
      
      public function get bottom() : int
      {
         return var_872;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_871,var_873,_right,var_872,param1);
      }
      
      public function dispose() : void
      {
         var_170 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_170(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
