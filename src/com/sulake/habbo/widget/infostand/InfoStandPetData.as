package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1637:int;
      
      private var var_1808:int;
      
      private var var_1811:int;
      
      private var _type:int;
      
      private var var_1287:int = -1;
      
      private var var_1805:int;
      
      private var _nutrition:int;
      
      private var var_1809:int;
      
      private var _energy:int;
      
      private var var_1807:int;
      
      private var var_1802:int;
      
      private var var_1806:int;
      
      private var var_1803:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1804:Boolean;
      
      private var _name:String = "";
      
      private var var_1810:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1804;
      }
      
      public function get level() : int
      {
         return var_1637;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1809;
      }
      
      public function get id() : int
      {
         return var_1287;
      }
      
      public function get nutritionMax() : int
      {
         return var_1811;
      }
      
      public function get ownerId() : int
      {
         return var_1810;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1287 = param1.id;
         _type = param1.petType;
         var_1807 = param1.petRace;
         _image = param1.image;
         var_1804 = param1.isOwnPet;
         var_1810 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1637 = param1.level;
         var_1805 = param1.levelMax;
         var_1808 = param1.experience;
         var_1809 = param1.experienceMax;
         _energy = param1.energy;
         var_1802 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1811 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1806 = param1.roomIndex;
         var_1803 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1806;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1802;
      }
      
      public function get levelMax() : int
      {
         return var_1805;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1807;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1808;
      }
      
      public function get age() : int
      {
         return var_1803;
      }
   }
}
