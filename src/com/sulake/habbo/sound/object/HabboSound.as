package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_901:SoundChannel = null;
      
      private var var_723:Boolean;
      
      private var var_900:Sound = null;
      
      private var var_640:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_900 = param1;
         var_900.addEventListener(Event.COMPLETE,onComplete);
         var_640 = 1;
         var_723 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_723;
      }
      
      public function stop() : Boolean
      {
         var_901.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_723 = false;
         var_901 = var_900.play(0);
         this.volume = var_640;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_640;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_901.position;
      }
      
      public function get length() : Number
      {
         return var_900.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_640 = param1;
         if(var_901 != null)
         {
            var_901.soundTransform = new SoundTransform(var_640);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_723 = true;
      }
   }
}
