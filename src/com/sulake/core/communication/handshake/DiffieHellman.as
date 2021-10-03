package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1357:BigInteger;
      
      private var var_962:BigInteger;
      
      private var var_1586:BigInteger;
      
      private var var_1358:BigInteger;
      
      private var var_1587:BigInteger;
      
      private var var_1588:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1357 = param1;
         var_1586 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1587.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1358 = new BigInteger();
         var_1358.fromRadix(param1,param2);
         var_1587 = var_1358.modPow(var_962,var_1357);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1588.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_962 = new BigInteger();
         var_962.fromRadix(param1,param2);
         var_1588 = var_1586.modPow(var_962,var_1357);
         return true;
      }
   }
}
