package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_1890:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_124:TutorialUI;
      
      private var var_1440:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_50:HelpUI;
      
      private var var_1439:IHabboConfigurationManager;
      
      private var var_173:IHabboToolbar;
      
      private var var_560:IHabboCommunicationManager;
      
      private var var_790:FaqIndex;
      
      private var var_1722:String = "";
      
      private var var_1380:IncomingMessages;
      
      private var var_1186:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1186 = new CallForHelpData();
         var_1890 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_790 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_173;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_50 != null)
         {
            var_50.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_50 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_50.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_124 != null)
         {
            var_124.dispose();
            var_124 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1722;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1186.reportedUserId = param1;
         var_1186.reportedUserName = param2;
         var_50.showUI(HabboHelpViewEnum.const_269);
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_1440;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_73:
               if(var_50 != null)
               {
                  var_50.setRoomSessionStatus(true);
               }
               if(var_124 != null)
               {
                  var_124.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_82:
               if(var_50 != null)
               {
                  var_50.setRoomSessionStatus(false);
               }
               if(var_124 != null)
               {
                  var_124.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_50 != null)
         {
            var_50.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_1890;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_50 != null)
         {
            var_50.showCallForHelpResult(param1);
         }
      }
      
      override public function dispose() : void
      {
         if(var_50 != null)
         {
            var_50.dispose();
            var_50 = null;
         }
         if(var_124 != null)
         {
            var_124.dispose();
            var_124 = null;
         }
         var_1380 = null;
         if(var_790 != null)
         {
            var_790.dispose();
            var_790 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_173 != null)
         {
            var_173.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_98,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_124 == null && _assetLibrary != null && _windowManager != null)
         {
            var_124 = new TutorialUI(this);
         }
         return var_124 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_50 == null && _assetLibrary != null && _windowManager != null)
         {
            var_50 = new HelpUI(this,_assetLibrary,_windowManager,var_1440,var_173);
         }
         return var_50 != null;
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1722 = param1;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1186;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_1440 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_124 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_124.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_560 = IHabboCommunicationManager(param2);
         var_1380 = new IncomingMessages(this,var_560);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_50 != null)
         {
            var_50.showUI(param1);
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_560 != null && param1 != null)
         {
            var_560.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_790;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_50 != null)
         {
            var_50.updateCallForGuideBotUI(false);
         }
      }
      
      public function hideUI() : void
      {
         if(var_50 != null)
         {
            var_50.hideUI();
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_173 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_1439 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_124;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_65)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_40)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_73,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_82,onRoomSessionEvent);
         var_173.events.addEventListener(HabboToolbarEvent.const_65,onHabboToolbarEvent);
         var_173.events.addEventListener(HabboToolbarEvent.const_40,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_50 != null)
         {
            var_50.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_1439 == null)
         {
            return param1;
         }
         return var_1439.getKey(param1,param2,param3);
      }
   }
}
