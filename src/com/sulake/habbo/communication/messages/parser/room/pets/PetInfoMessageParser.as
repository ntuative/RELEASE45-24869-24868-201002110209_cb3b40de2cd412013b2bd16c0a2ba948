package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1803:int;
      
      private var var_576:String;
      
      private var var_1637:int;
      
      private var var_1682:int;
      
      private var var_1808:int;
      
      private var var_2160:int;
      
      private var _nutrition:int;
      
      private var var_1287:int;
      
      private var var_2161:int;
      
      private var var_2159:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1810:int;
      
      private var var_2162:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1637;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2160;
      }
      
      public function flush() : Boolean
      {
         var_1287 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2161;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2159;
      }
      
      public function get maxNutrition() : int
      {
         return var_2162;
      }
      
      public function get figure() : String
      {
         return var_576;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1682;
      }
      
      public function get petId() : int
      {
         return var_1287;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1287 = param1.readInteger();
         _name = param1.readString();
         var_1637 = param1.readInteger();
         var_2161 = param1.readInteger();
         var_1808 = param1.readInteger();
         var_2159 = param1.readInteger();
         _energy = param1.readInteger();
         var_2160 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2162 = param1.readInteger();
         var_576 = param1.readString();
         var_1682 = param1.readInteger();
         var_1810 = param1.readInteger();
         var_1803 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1808;
      }
      
      public function get ownerId() : int
      {
         return var_1810;
      }
      
      public function get age() : int
      {
         return var_1803;
      }
   }
}
