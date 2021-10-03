package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.utils.IIterator;
   import flash.geom.Rectangle;
   
   public class ScrollableItemListWindow extends WindowController implements IScrollableListWindow
   {
       
      
      private var var_717:IItemListWindow;
      
      private var var_305:IScrollbarWindow;
      
      private var var_1343:Boolean = true;
      
      public function ScrollableItemListWindow(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         _scrollBar.scrollable = name_1;
         if(_scrollBar.testStateFlag(WindowState.const_51))
         {
            hideScrollBar();
         }
      }
      
      public function groupListItemsWithTag(param1:String, param2:Array, param3:Boolean = false) : uint
      {
         return name_1.groupListItemsWithTag(param1,param2,param3);
      }
      
      public function set scrollStepV(param1:Number) : void
      {
         name_1.scrollStepV = param1;
      }
      
      public function get scrollableRegion() : Rectangle
      {
         return name_1.scrollableRegion;
      }
      
      public function removeListItem(param1:IWindow) : IWindow
      {
         return name_1.removeListItem(param1);
      }
      
      public function arrangeListItems() : void
      {
         name_1.arrangeListItems();
      }
      
      public function get visibleRegion() : Rectangle
      {
         return name_1.visibleRegion;
      }
      
      protected function get _scrollBar() : IScrollbarWindow
      {
         if(!var_305)
         {
            var_305 = findChildByTag("_SCROLLBAR") as IScrollbarWindow;
            if(var_305)
            {
               var_305.addEventListener(WindowEvent.const_231,scrollBarEventProc);
               var_305.addEventListener(WindowEvent.const_203,scrollBarEventProc);
            }
         }
         return var_305;
      }
      
      public function removeListItemAt(param1:int) : IWindow
      {
         return name_1.removeListItemAt(param1);
      }
      
      private function showScrollBar() : void
      {
         if(false)
         {
            _scrollBar.visible = true;
            name_1.width = 0 - 0;
         }
      }
      
      public function addListItem(param1:IWindow) : IWindow
      {
         return name_1.addListItem(param1);
      }
      
      public function set spacing(param1:int) : void
      {
         name_1.spacing = param1;
      }
      
      public function get maxScrollH() : int
      {
         return name_1.maxScrollH;
      }
      
      public function swapListItemsAt(param1:int, param2:int) : void
      {
         name_1.swapListItemsAt(param1,param2);
      }
      
      public function getListItemByID(param1:uint) : IWindow
      {
         return name_1.getListItemByID(param1);
      }
      
      public function get scrollH() : Number
      {
         return name_1.scrollH;
      }
      
      public function get maxScrollV() : int
      {
         return name_1.maxScrollV;
      }
      
      override public function dispose() : void
      {
         if(var_305)
         {
            var_305.removeEventListener(WindowEvent.const_231,scrollBarEventProc);
            var_305.removeEventListener(WindowEvent.const_203,scrollBarEventProc);
            var_305 = null;
         }
         if(var_717)
         {
            var_717 = null;
         }
         super.dispose();
      }
      
      public function get scrollV() : Number
      {
         return name_1.scrollV;
      }
      
      private function scrollBarEventProc(param1:WindowEvent) : void
      {
         if(param1.type == WindowEvent.const_231)
         {
            showScrollBar();
         }
         else if(param1.type == WindowEvent.const_203)
         {
            hideScrollBar();
         }
      }
      
      public function set resizeOnItemUpdate(param1:Boolean) : void
      {
         name_1.resizeOnItemUpdate = param1;
      }
      
      protected function get name_1() : IItemListWindow
      {
         if(!var_717)
         {
            var_717 = findChildByTag("_ITEMLIST") as IItemListWindow;
         }
         return var_717;
      }
      
      public function get scaleToFitItems() : Boolean
      {
         return name_1.scaleToFitItems;
      }
      
      public function set scrollH(param1:Number) : void
      {
         name_1.scrollH = param1;
      }
      
      public function get scrollStepV() : Number
      {
         return name_1.scrollStepV;
      }
      
      private function updateScrollBarVisibility() : void
      {
         if(var_1343)
         {
            if(_scrollBar.testStateFlag(WindowState.const_51))
            {
               if(false)
               {
                  hideScrollBar();
               }
            }
         }
         else if(false)
         {
            showScrollBar();
         }
      }
      
      public function set autoArrangeItems(param1:Boolean) : void
      {
         name_1.autoArrangeItems = param1;
      }
      
      public function getListItemByName(param1:String) : IWindow
      {
         return name_1.getListItemByName(param1);
      }
      
      public function get spacing() : int
      {
         return name_1.spacing;
      }
      
      public function setListItemIndex(param1:IWindow, param2:int) : void
      {
         name_1.setListItemIndex(param1,param2);
      }
      
      public function get scrollStepH() : Number
      {
         return name_1.scrollStepH;
      }
      
      protected function isConstructionReady() : Boolean
      {
         return name_1 && _scrollBar;
      }
      
      public function get resizeOnItemUpdate() : Boolean
      {
         return name_1.resizeOnItemUpdate;
      }
      
      public function set scrollV(param1:Number) : void
      {
         name_1.scrollV = param1;
      }
      
      public function groupListItemsWithID(param1:uint, param2:Array, param3:Boolean = false) : uint
      {
         return name_1.groupListItemsWithID(param1,param2,param3);
      }
      
      public function getListItemAt(param1:uint) : IWindow
      {
         return name_1.getListItemAt(param1);
      }
      
      public function get autoArrangeItems() : Boolean
      {
         return name_1.autoArrangeItems;
      }
      
      public function get numListItems() : int
      {
         return name_1.numListItems;
      }
      
      public function set scrollStepH(param1:Number) : void
      {
         name_1.scrollStepH = param1;
      }
      
      public function set scaleToFitItems(param1:Boolean) : void
      {
         name_1.scaleToFitItems = param1;
      }
      
      private function hideScrollBar() : void
      {
         if(false)
         {
            _scrollBar.visible = false;
            name_1.width = var_5.width;
         }
      }
      
      public function getListItemIndex(param1:IWindow) : int
      {
         return name_1.getListItemIndex(param1);
      }
      
      public function get iterator() : IIterator
      {
         return !!isConstructionReady() ? name_1.iterator : null;
      }
      
      public function set autoHideScrollBar(param1:Boolean) : void
      {
         var_1343 = param1;
         updateScrollBarVisibility();
      }
      
      public function removeListItems() : void
      {
         name_1.removeListItems();
      }
      
      public function addListItemAt(param1:IWindow, param2:uint) : IWindow
      {
         return name_1.addListItemAt(param1,param2);
      }
      
      public function get autoHideScrollBar() : Boolean
      {
         return var_1343;
      }
      
      public function destroyListItems() : void
      {
         name_1.destroyListItems();
      }
      
      public function swapListItems(param1:IWindow, param2:IWindow) : void
      {
         name_1.swapListItems(param1,param2);
      }
   }
}
