package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_539:int = 8;
      
      public static const const_1503:int = 10;
      
      public static const const_1245:int = 6;
      
      private static var var_896:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1179:int = 0;
      
      public static const const_1471:int = 1;
      
      public static const const_1587:int = 2;
      
      public static const const_1453:int = 3;
      
      public static const const_1442:int = 4;
      
      public static const const_1449:int = 5;
      
      public static const const_1463:int = 9;
      
      public static const const_1499:int = 7;
       
      
      private var var_153:uint = 0;
      
      private var var_897:uint = 0;
      
      private var var_600:Date;
      
      private var var_1578:int = -1;
      
      private var parseFunc:Function;
      
      private var var_418:Boolean = false;
      
      private var var_2257:int = -1;
      
      private var var_1070:uint = 0;
      
      private var var_1579:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_718:uint;
      
      private var var_17:ByteArray;
      
      private var var_598:uint;
      
      private var var_1345:Boolean = false;
      
      private var var_2258:int = -1;
      
      private var var_1347:String = "2.0";
      
      private var var_152:Boolean = false;
      
      private var var_1580:Boolean = false;
      
      private var var_306:String;
      
      private var var_507:uint = 0;
      
      private var var_1069:int = 0;
      
      private var var_353:String = "";
      
      private var var_599:int = 8;
      
      private var var_1346:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_306 = param1;
         _extraFields = new Dictionary();
         var_17 = new ByteArray();
         var_17.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_507;
      }
      
      public function set filename(param1:String) : void
      {
         var_353 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_152 && false)
         {
            var_17.position = 0;
            if(var_896)
            {
               var_17.uncompress.apply(var_17,["deflate"]);
            }
            else
            {
               var_17.uncompress();
            }
            var_17.position = 0;
            var_152 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_353;
      }
      
      public function get date() : Date
      {
         return var_600;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1346)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_153 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_153)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1347;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_152)
         {
            uncompress();
         }
         var_17.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_17.readUTFBytes(var_17.bytesAvailable);
         }
         else
         {
            _loc3_ = var_17.readMultiByte(var_17.bytesAvailable,param2);
         }
         var_17.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_599 === const_539 && !var_1345)
         {
            if(var_896)
            {
               param1.readBytes(var_17,0,var_153);
            }
            else
            {
               if(!var_418)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_17.writeByte(120);
               _loc2_ = uint(~var_1578 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_17.writeByte(_loc2_);
               param1.readBytes(var_17,2,var_153);
               var_17.position = var_17.length;
               var_17.writeUnsignedInt(var_718);
            }
            var_152 = true;
         }
         else
         {
            if(var_599 != const_1179)
            {
               throw new Error("Compression method " + var_599 + " is not supported.");
            }
            param1.readBytes(var_17,0,var_153);
            var_152 = false;
         }
         var_17.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_897 + var_1070 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_17.length = 0;
         var_17.position = 0;
         var_152 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_17.writeUTFBytes(param1);
            }
            else
            {
               var_17.writeMultiByte(param1,param2);
            }
            var_598 = ChecksumUtil.CRC32(var_17);
            var_418 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_600 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1069 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1069 << 8 | 20);
         param1.writeShort(var_306 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_539);
         var _loc5_:Date = var_600 != null ? var_600 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_598);
         param1.writeUnsignedInt(var_153);
         param1.writeUnsignedInt(var_507);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_306 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_353);
         }
         else
         {
            _loc8_.writeMultiByte(var_353,var_306);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_418)
            {
               _loc16_ = var_152;
               if(_loc16_)
               {
                  uncompress();
               }
               var_718 = ChecksumUtil.Adler32(var_17,0,var_17.length);
               var_418 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_718);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_306 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1579);
            }
            else
            {
               _loc8_.writeMultiByte(var_1579,var_306);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_153 > 0)
         {
            if(var_896)
            {
               _loc13_ = 0;
               param1.writeBytes(var_17,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_17,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_153;
      }
      
      protected function compress() : void
      {
         if(!var_152)
         {
            if(false)
            {
               var_17.position = 0;
               var_507 = var_17.length;
               if(var_896)
               {
                  var_17.compress.apply(var_17,["deflate"]);
                  var_153 = var_17.length;
               }
               else
               {
                  var_17.compress();
                  var_153 = -6;
               }
               var_17.position = 0;
               var_152 = true;
            }
            else
            {
               var_153 = 0;
               var_507 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_897 + var_1070)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_306 == "utf-8")
         {
            var_353 = param1.readUTFBytes(var_897);
         }
         else
         {
            var_353 = param1.readMultiByte(var_897,var_306);
         }
         var _loc2_:uint = var_1070;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_353 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_718 = param1.readUnsignedInt();
               var_418 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1069 = _loc2_ >> 8;
         var_1347 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_599 = param1.readUnsignedShort();
         var_1345 = (_loc3_ & 1) !== 0;
         var_1346 = (_loc3_ & 8) !== 0;
         var_1580 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_306 = "utf-8";
         }
         if(var_599 === const_1245)
         {
            var_2258 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2257 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_599 === const_539)
         {
            var_1578 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_600 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_598 = param1.readUnsignedInt();
         var_153 = param1.readUnsignedInt();
         var_507 = param1.readUnsignedInt();
         var_897 = param1.readUnsignedShort();
         var_1070 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_17,0,param1.length);
            var_598 = ChecksumUtil.CRC32(var_17);
            var_418 = false;
         }
         else
         {
            var_17.length = 0;
            var_17.position = 0;
            var_152 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_353 + "\n  date:" + var_600 + "\n  sizeCompressed:" + var_153 + "\n  sizeUncompressed:" + var_507 + "\n  versionHost:" + var_1069 + "\n  versionNumber:" + var_1347 + "\n  compressionMethod:" + var_599 + "\n  encrypted:" + var_1345 + "\n  hasDataDescriptor:" + var_1346 + "\n  hasCompressedPatchedData:" + var_1580 + "\n  filenameEncoding:" + var_306 + "\n  crc32:" + var_598.toString(16) + "\n  adler32:" + var_718.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_152)
         {
            uncompress();
         }
         return var_17;
      }
   }
}
