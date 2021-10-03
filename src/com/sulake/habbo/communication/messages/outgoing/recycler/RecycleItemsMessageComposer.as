package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_800:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_800 = new Array();
         var_800.push(param1.length);
         var_800 = var_800.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_800;
      }
   }
}
