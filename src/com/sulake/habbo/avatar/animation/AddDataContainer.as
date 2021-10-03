package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1397:String;
      
      private var var_1536:String;
      
      private var var_988:String;
      
      private var var_394:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1397 = String(param1.@align);
         var_988 = String(param1.@base);
         var_1536 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_394 = Number(_loc2_);
            if(var_394 > 1)
            {
               var_394 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1397;
      }
      
      public function get ink() : String
      {
         return var_1536;
      }
      
      public function get base() : String
      {
         return var_988;
      }
      
      public function get isBlended() : Boolean
      {
         return var_394 != 1;
      }
      
      public function get blend() : Number
      {
         return var_394;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
