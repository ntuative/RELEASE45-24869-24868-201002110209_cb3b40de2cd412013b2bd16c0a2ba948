package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.navigator.domain.Tabs;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailRenderer;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   
   public class RoomPopupCtrl extends PopupCtrl
   {
       
      
      private var var_2008:RoomThumbnailRenderer;
      
      private var var_930:TagRenderer;
      
      private var var_161:IWindowContainer;
      
      private var var_108:GuestRoomData;
      
      public function RoomPopupCtrl(param1:HabboNavigator, param2:int, param3:int)
      {
         super(param1,param2,param3,"grs_guest_room_details_long");
         var_2008 = new RoomThumbnailRenderer(param1);
         var_930 = new TagRenderer(param1,hideInstantly);
      }
      
      private function refreshOwnerName() : void
      {
         refreshTextWithCaption("roomowner",var_161,var_108.ownerName);
         var _loc1_:ITextWindow = ITextWindow(var_161.findChildByName("roomowner"));
         if(true)
         {
            _loc1_.procedure = onOwnerName;
            _loc1_.setParamFlag(HabboWindowParam.const_22,true);
            _loc1_.underline = true;
         }
         else
         {
            _loc1_.procedure = null;
            _loc1_.setParamFlag(HabboWindowParam.const_22,false);
            _loc1_.underline = false;
         }
      }
      
      private function refreshExtraCont() : void
      {
         var _loc1_:IWindowContainer = IWindowContainer(var_161.findChildByName("extra_cont"));
         Util.hideChildren(_loc1_);
         var_930.refreshTags(_loc1_,var_108.tags);
         refreshTextWithCaption("rating",_loc1_,"undefined");
         if(false)
         {
            refreshTextWithCaption("startedat",_loc1_,"undefined");
         }
         var_2008.refreshThumbnail(_loc1_,var_108.thumbnail,false);
         _loc1_.findChildByName("bitmap").visible = true;
         _loc1_.visible = true;
      }
      
      private function refreshRoomName(param1:IWindowContainer, param2:GuestRoomData) : void
      {
         var _loc3_:ITextWindow = ITextWindow(param1.getChildByName("roomname"));
         _loc3_.visible = true;
         _loc3_.text = param2.roomName;
         _loc3_.height = _loc3_.textHeight + 3;
      }
      
      private function refreshInfo(param1:IWindowContainer, param2:String, param3:Boolean) : void
      {
         if(!param3)
         {
            return;
         }
         var _loc4_:IWindowContainer = IWindowContainer(param1.findChildByName(param2));
         _loc4_.visible = true;
         navigator.refreshButton(_loc4_,param2,true,null,0);
      }
      
      private function getRoomCtg(param1:int) : String
      {
         var _loc2_:* = null;
         for each(_loc2_ in navigator.data.categories)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_.nodeName;
            }
         }
         return "";
      }
      
      private function refreshRoomDesc(param1:IWindowContainer, param2:GuestRoomData) : void
      {
         if(param2.description == "")
         {
            return;
         }
         var _loc4_:ITextWindow = ITextWindow(param1.getChildByName("roomdesc"));
         _loc4_.text = param2.description;
         _loc4_.height = _loc4_.textHeight + 10;
         _loc4_.y = Util.getLowestPoint(param1);
         _loc4_.visible = true;
      }
      
      private function getEventCtg(param1:int) : String
      {
         var _loc2_:String = "roomevent_type_" + param1;
         var _loc3_:String = navigator.getText(_loc2_);
         return _loc3_ == null ? "" : _loc3_;
      }
      
      public function set room(param1:GuestRoomData) : void
      {
         var_108 = param1;
      }
      
      private function refreshTextWithCaption(param1:String, param2:IWindowContainer, param3:String) : void
      {
         var _loc4_:IWindowContainer = IWindowContainer(param2.findChildByName(param1 + "_cont"));
         _loc4_.visible = true;
         var _loc5_:ITextWindow = ITextWindow(_loc4_.getChildByName(param1));
         var _loc6_:ITextWindow = ITextWindow(_loc4_.getChildByName(param1 + ".caption"));
         _loc5_.text = param3;
         Util.moveChildrenToRow(_loc4_,[param1 + ".caption",param1],_loc6_.x,0,2);
      }
      
      override public function refreshContent(param1:IWindowContainer) : void
      {
         if(var_161 == null)
         {
            var_161 = IWindowContainer(param1.findChildByName("details_container"));
         }
         var_161.visible = true;
         Util.hideChildren(var_161);
         refreshRoomName(var_161,var_108);
         if(true)
         {
         }
         refreshOwnerName();
         refreshTextWithCaption("roomctg",var_161,!true ? getEventCtg(var_108.categoryId) : getRoomCtg(var_108.categoryId));
         refreshRoomDesc(var_161,var_108);
         refreshExtraCont();
         refreshInfo(var_161,"trading_allowed",var_108.allowTrading);
         refreshInfo(var_161,"doormode_doorbell",false);
         refreshInfo(var_161,"doormode_password",false);
         Util.moveChildrenToColumn(var_161,["roomname","roomctg_cont","roomowner_cont","roomdesc","extra_cont","doormode_doorbell","doormode_password","trading_allowed"],0,0);
         var_161.height = Util.getLowestPoint(var_161);
      }
      
      private function onOwnerName(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:ITextWindow = ITextWindow(param2);
         if(_loc3_ != null)
         {
            navigator.mainViewCtrl.startSearch(Tabs.const_193,Tabs.const_181,_loc3_.text);
            this.hideInstantly();
         }
      }
   }
}
