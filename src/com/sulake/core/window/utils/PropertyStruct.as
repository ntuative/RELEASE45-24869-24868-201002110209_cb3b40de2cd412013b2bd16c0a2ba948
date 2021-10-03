package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_668:String = "Rectangle";
      
      public static const const_39:String = "Boolean";
      
      public static const const_671:String = "Number";
      
      public static const const_46:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_576:String = "Point";
      
      public static const const_793:String = "Array";
      
      public static const const_940:String = "uint";
      
      public static const const_338:String = "hex";
      
      public static const const_795:String = "Map";
       
      
      private var var_567:String;
      
      private var var_164:Object;
      
      private var var_2285:Boolean;
      
      private var _type:String;
      
      private var var_2017:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_567 = param1;
         var_164 = param2;
         _type = param3;
         var_2017 = param4;
         var_2285 = param3 == const_795 || param3 == const_793 || param3 == const_576 || param3 == const_668;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_338:
               return "0x" + uint(var_164).toString(16);
            case const_39:
               return Boolean(var_164) == true ? "true" : "false";
            case const_576:
               return "Point(" + Point(var_164).x + ", " + Point(var_164).y + ")";
            case const_668:
               return "Rectangle(" + Rectangle(var_164).x + ", " + Rectangle(var_164).y + ", " + Rectangle(var_164).width + ", " + Rectangle(var_164).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_795:
               _loc3_ = var_164 as Map;
               _loc1_ = "<var key=\"" + var_567 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_793:
               _loc4_ = var_164 as Array;
               _loc1_ = "<var key=\"" + var_567 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_576:
               _loc5_ = var_164 as Point;
               _loc1_ = "<var key=\"" + var_567 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_668:
               _loc6_ = var_164 as Rectangle;
               _loc1_ = "<var key=\"" + var_567 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_338:
               _loc1_ = "<var key=\"" + var_567 + "\" value=\"" + "0x" + uint(var_164).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_567 + "\" value=\"" + var_164 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_164;
      }
      
      public function get valid() : Boolean
      {
         return var_2017;
      }
      
      public function get key() : String
      {
         return var_567;
      }
   }
}
