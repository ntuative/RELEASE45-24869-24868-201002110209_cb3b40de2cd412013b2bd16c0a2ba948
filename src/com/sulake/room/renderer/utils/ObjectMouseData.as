package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1707:String = "";
      
      private var var_140:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1707 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_140 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1707;
      }
      
      public function get objectId() : String
      {
         return var_140;
      }
   }
}
