package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1864:int;
      
      private var var_1305:int;
      
      private var var_628:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1305 = param1.readInteger();
         var_1864 = param1.readInteger();
         var_628 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_628.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_1864;
      }
      
      public function get prizes() : Array
      {
         return var_628;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1305;
      }
   }
}
