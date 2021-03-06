package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_635:String = "me_menu_settings_view";
      
      private static const const_753:int = 10;
      
      public static const const_543:String = "me_menu_effects_view";
      
      public static const const_103:String = "me_menu_top_view";
      
      public static const const_1281:String = "me_menu_rooms_view";
      
      public static const const_987:String = "me_menu_dance_moves_view";
      
      public static const const_249:String = "me_menu_my_clothes_view";
       
      
      private var var_2051:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1505:int = 0;
      
      private var var_2052:int = 0;
      
      private var var_2050:Boolean = false;
      
      private var var_252:Boolean = false;
      
      private var var_2054:int = 0;
      
      private var var_2049:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_572:Boolean = false;
      
      private var var_86:ClubPromoView;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1257:int = 0;
      
      private var var_2053:Boolean = false;
      
      private var var_1011:Point;
      
      private var var_25:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1011 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_2053 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_103);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_685,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_589,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_634,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_518,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_294,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_562,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_376,onShowAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_993,onHideAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_210,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_184,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_500,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_194,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_274,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_83,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_337,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_151,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_572;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_252)
         {
            return;
         }
         if(var_25.window.name == const_635)
         {
            (var_25 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1257 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1505 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1505.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_252 && var_25.window.name == const_249))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_704);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_685,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_589,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_634,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_518,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_294,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_210,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_184,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_500,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_562,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_376,onShowAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_993,onHideAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_194,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_274,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_337,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_83,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_151,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_25 != null)
         {
            var_25.dispose();
            var_25 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_2051;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_2049 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onHideAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_86 != null)
         {
            var_86.dispose();
            var_86 = null;
         }
         updateSize();
      }
      
      public function get isDancing() : Boolean
      {
         return var_2050;
      }
      
      public function get creditBalance() : int
      {
         return var_1505;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_337:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_252 + " view: " + var_25.window.name);
               if(var_252 != true || var_25.window.name != const_103)
               {
                  return;
               }
               (var_25 as MeMenuMainView).setIconAssets("clothes_icon",const_103,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_83:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_2049 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_2052;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_572 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_572 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1257 > 0;
         var_1257 = param1.daysLeft;
         var_2052 = param1.periodsLeft;
         var_2054 = param1.pastPeriods;
         var_2051 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_25 != null)
            {
               changeView(var_25.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_2050 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_25 != null && var_25.window.name != const_249)
         {
            hide();
         }
      }
      
      private function onShowAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(var_25 != null && var_25.window.name == const_249)
         {
            if(param1.promoMode == RoomWidgetAvatarEditorUpdateEvent.const_765)
            {
               var_86 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_1260);
            }
            else
            {
               var_86 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_438);
            }
            _loc2_ = _mainContainer.getChildByName(var_25.window.name);
            if(_loc2_ != null)
            {
               var_86.window.x = _loc2_.width + const_753;
               _mainContainer.addChild(var_86.window);
               _mainContainer.width = var_86.window.x + var_86.window.width;
            }
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_572 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_572 = true;
            }
         }
         if(var_25 != null && var_25.window.name == const_543)
         {
            (var_25 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_2054;
      }
      
      public function get habboClubDays() : int
      {
         return var_1257;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1196,HabboWindowStyle.const_854,HabboWindowParam.const_23,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_252 = !var_252;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_252 = false;
               break;
            default:
               return;
         }
         if(var_252)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_636);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_25 != null)
         {
            _mainContainer.removeChild(var_25.window);
            var_25.dispose();
            var_25 = null;
         }
         var_252 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_25 != null && var_25.window.name == const_249)
         {
            if(var_86 != null)
            {
               var_86.dispose();
               var_86 = null;
            }
            changeView(const_103);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_2053;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_86 != null)
         {
            var_86.dispose();
            var_86 = null;
         }
         switch(param1)
         {
            case const_103:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_543:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_987:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_249:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1281:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_635:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_25 != null)
            {
               _mainContainer.removeChild(var_25.window);
               var_25.dispose();
               var_25 = null;
            }
            var_25 = _loc2_;
            var_25.init(this,param1);
         }
         updateSize();
      }
      
      public function updateSize() : void
      {
         if(var_25 != null)
         {
            var_1011.x = var_25.window.width + 10;
            var_1011.y = var_25.window.height;
            var_25.window.x = 5;
            var_25.window.y = 0;
            _mainContainer.width = var_1011.x;
            _mainContainer.height = var_1011.y;
            if(var_86 != null)
            {
               _mainContainer.width = var_86.window.x + var_86.window.width + const_753;
            }
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_103);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_666);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_252 = true;
      }
   }
}
