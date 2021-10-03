package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1952:int;
      
      private var var_1947:String;
      
      private var var_1455:IActionDefinition;
      
      private var var_1946:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1949:String;
      
      private var var_1950:String;
      
      private var var_1577:Boolean;
      
      private var var_1948:ColorTransform;
      
      private var var_1951:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1947 = param1;
         var_1949 = param2;
         var_1952 = param3;
         _color = param4;
         _frames = param5;
         var_1455 = param6;
         var_1577 = param7;
         var_1951 = param8;
         var_1950 = param9;
         var_1946 = param10;
         var_1948 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1577;
      }
      
      public function get partType() : String
      {
         return var_1949;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1951;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1946;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1952;
      }
      
      public function get flippedPartType() : String
      {
         return var_1950;
      }
      
      public function get bodyPartId() : String
      {
         return var_1947;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1455;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1948;
      }
   }
}
