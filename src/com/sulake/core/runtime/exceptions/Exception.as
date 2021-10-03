package com.sulake.core.runtime.exceptions
{
   public class Exception extends Error
   {
       
      
      private var var_1532:String;
      
      public function Exception(param1:String, param2:String = "")
      {
         var_1532 = param2;
         super(param1);
      }
      
      override public function getStackTrace() : String
      {
         return var_1532 != "" ? var_1532 : super.getStackTrace();
      }
      
      public function toString() : String
      {
         return "Exception: " + super.message;
      }
   }
}
