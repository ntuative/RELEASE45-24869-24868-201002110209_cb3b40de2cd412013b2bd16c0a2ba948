package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_630:int = -1;
      
      public static const const_910:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1817:int = -1;
      
      private var var_76:int = 0;
      
      private var var_1157:int = 1;
      
      private var var_763:int = 1;
      
      private var var_1818:Boolean = false;
      
      private var var_1819:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_76 = param2;
         _y = param3;
         var_1818 = param5;
         if(param4 < 0)
         {
            param4 = const_630;
         }
         var_763 = param4;
         var_1157 = param4;
         if(param6 >= 0)
         {
            var_1817 = param6;
            var_1819 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_763 > 0 && param1 > var_763)
         {
            param1 = var_763;
         }
         var_1157 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_763;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1819;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_763 < 0)
         {
            return const_630;
         }
         return var_1157;
      }
      
      public function get activeSequence() : int
      {
         return var_1817;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1818;
      }
      
      public function get x() : int
      {
         return var_76;
      }
   }
}
