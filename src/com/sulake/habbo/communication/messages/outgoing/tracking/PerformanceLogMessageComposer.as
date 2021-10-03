package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1048:int = 0;
      
      private var var_1116:int = 0;
      
      private var var_1666:String = "";
      
      private var var_1047:int = 0;
      
      private var var_1662:String = "";
      
      private var var_1663:int = 0;
      
      private var var_1553:String = "";
      
      private var var_1664:int = 0;
      
      private var var_1665:int = 0;
      
      private var var_1667:String = "";
      
      private var var_1661:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1664 = param1;
         var_1667 = param2;
         var_1553 = param3;
         var_1666 = param4;
         var_1662 = param5;
         if(param6)
         {
            var_1116 = 1;
         }
         else
         {
            var_1116 = 0;
         }
         var_1663 = param7;
         var_1665 = param8;
         var_1047 = param9;
         var_1661 = param10;
         var_1048 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1664,var_1667,var_1553,var_1666,var_1662,var_1116,var_1663,var_1665,var_1047,var_1661,var_1048];
      }
      
      public function dispose() : void
      {
      }
   }
}
