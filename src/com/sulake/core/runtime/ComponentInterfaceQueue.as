package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1207:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_799:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1207 = param1;
         var_799 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_799;
      }
      
      public function get identifier() : IID
      {
         return var_1207;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1207 = null;
            while(false)
            {
               var_799.pop();
            }
            var_799 = null;
         }
      }
   }
}
