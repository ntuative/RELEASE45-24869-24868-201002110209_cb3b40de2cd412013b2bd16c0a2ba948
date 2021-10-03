package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_107;
         param1["bound_to_parent_rect"] = const_66;
         param1["child_window"] = const_978;
         param1["embedded_controller"] = const_311;
         param1["resize_to_accommodate_children"] = const_45;
         param1["input_event_processor"] = const_32;
         param1["internal_event_handling"] = const_626;
         param1["mouse_dragging_target"] = const_173;
         param1["mouse_dragging_trigger"] = const_304;
         param1["mouse_scaling_target"] = const_220;
         param1["mouse_scaling_trigger"] = const_350;
         param1["horizontal_mouse_scaling_trigger"] = const_183;
         param1["vertical_mouse_scaling_trigger"] = const_206;
         param1["observe_parent_input_events"] = const_922;
         param1["optimize_region_to_layout_size"] = const_388;
         param1["parent_window"] = const_970;
         param1["relative_horizontal_scale_center"] = const_144;
         param1["relative_horizontal_scale_fixed"] = const_96;
         param1["relative_horizontal_scale_move"] = const_309;
         param1["relative_horizontal_scale_strech"] = const_233;
         param1["relative_scale_center"] = const_901;
         param1["relative_scale_fixed"] = const_574;
         param1["relative_scale_move"] = const_853;
         param1["relative_scale_strech"] = const_886;
         param1["relative_vertical_scale_center"] = const_156;
         param1["relative_vertical_scale_fixed"] = const_109;
         param1["relative_vertical_scale_move"] = const_268;
         param1["relative_vertical_scale_strech"] = const_244;
         param1["on_resize_align_left"] = const_692;
         param1["on_resize_align_right"] = const_420;
         param1["on_resize_align_center"] = const_389;
         param1["on_resize_align_top"] = const_689;
         param1["on_resize_align_bottom"] = const_454;
         param1["on_resize_align_middle"] = const_342;
         param1["on_accommodate_align_left"] = const_771;
         param1["on_accommodate_align_right"] = const_407;
         param1["on_accommodate_align_center"] = const_555;
         param1["on_accommodate_align_top"] = const_906;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_653;
         param1["route_input_events_to_parent"] = const_331;
         param1["use_parent_graphic_context"] = const_14;
         param1["draggable_with_mouse"] = const_974;
         param1["scalable_with_mouse"] = const_820;
         param1["reflect_horizontal_resize_to_parent"] = const_410;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_248;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
