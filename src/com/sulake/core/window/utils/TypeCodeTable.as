package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_582;
         param1["bitmap"] = const_627;
         param1["border"] = const_669;
         param1["border_notify"] = const_1185;
         param1["button"] = const_451;
         param1["button_thick"] = const_494;
         param1["button_icon"] = const_1207;
         param1["button_group_left"] = const_536;
         param1["button_group_center"] = const_504;
         param1["button_group_right"] = const_651;
         param1["canvas"] = const_567;
         param1["checkbox"] = const_544;
         param1["closebutton"] = const_884;
         param1["container"] = const_288;
         param1["container_button"] = const_607;
         param1["display_object_wrapper"] = const_673;
         param1["dropmenu"] = const_450;
         param1["dropmenu_item"] = const_428;
         param1["frame"] = const_290;
         param1["frame_notify"] = const_1334;
         param1["header"] = const_612;
         param1["icon"] = const_942;
         param1["itemgrid"] = const_816;
         param1["itemgrid_horizontal"] = const_421;
         param1["itemgrid_vertical"] = const_656;
         param1["itemlist"] = const_860;
         param1["itemlist_horizontal"] = const_285;
         param1["itemlist_vertical"] = const_277;
         param1["maximizebox"] = const_1147;
         param1["menu"] = const_1125;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_882;
         param1["minimizebox"] = const_1148;
         param1["notify"] = const_1166;
         param1["null"] = const_714;
         param1["password"] = const_490;
         param1["radiobutton"] = const_506;
         param1["region"] = const_403;
         param1["restorebox"] = const_1216;
         param1["scaler"] = const_880;
         param1["scaler_horizontal"] = const_1215;
         param1["scaler_vertical"] = const_1171;
         param1["scrollbar_horizontal"] = const_460;
         param1["scrollbar_vertical"] = const_495;
         param1["scrollbar_slider_button_up"] = const_959;
         param1["scrollbar_slider_button_down"] = const_862;
         param1["scrollbar_slider_button_left"] = const_864;
         param1["scrollbar_slider_button_right"] = const_773;
         param1["scrollbar_slider_bar_horizontal"] = const_934;
         param1["scrollbar_slider_bar_vertical"] = const_830;
         param1["scrollbar_slider_track_horizontal"] = const_897;
         param1["scrollbar_slider_track_vertical"] = const_812;
         param1["scrollable_itemlist"] = const_1299;
         param1["scrollable_itemlist_vertical"] = const_366;
         param1["scrollable_itemlist_horizontal"] = const_953;
         param1["selector"] = const_521;
         param1["selector_list"] = const_620;
         param1["submenu"] = const_882;
         param1["tab_button"] = const_511;
         param1["tab_container_button"] = const_826;
         param1["tab_context"] = const_427;
         param1["tab_content"] = const_920;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_641;
         param1["input"] = const_552;
         param1["toolbar"] = const_1314;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
