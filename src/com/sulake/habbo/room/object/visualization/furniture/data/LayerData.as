package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_335:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_364:int = 0;
      
      public static const const_944:int = 2;
      
      public static const const_893:int = 1;
      
      public static const const_480:Boolean = false;
      
      public static const const_646:String = "";
      
      public static const const_378:int = 0;
      
      public static const const_380:int = 0;
      
      public static const const_426:int = 0;
       
      
      private var var_1639:int = 0;
      
      private var var_1591:String = "";
      
      private var var_1536:int = 0;
      
      private var var_1640:int = 0;
      
      private var var_1641:Number = 0;
      
      private var var_1642:int = 255;
      
      private var var_1638:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1639;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1536 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1641;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1640 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1639 = param1;
      }
      
      public function get tag() : String
      {
         return var_1591;
      }
      
      public function get alpha() : int
      {
         return var_1642;
      }
      
      public function get ink() : int
      {
         return var_1536;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1641 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1640;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1638 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1638;
      }
      
      public function set tag(param1:String) : void
      {
         var_1591 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1642 = param1;
      }
   }
}
