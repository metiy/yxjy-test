#!/usr/bin/lua

timpfile_info= "./update.info";
timpfile_rom = "./a.bin";
info_url     = "https://github.com/metiy/yxjy-test/raw/master/update.info";


cmd = "rm " .. timpfile_info .. " " .. timpfile_rom;
ret = os.execute ( cmd );

cmd = "wget -O " .. timpfile_info .. " " .. info_url;
ret = os.execute ( cmd );


dofile (timpfile_info);
print ( mcuversion , mcu_url , mcu_md5);


cmd =  "wget -O " .. timpfile_rom .. "  "  .. mcu_url;
print (cmd);
ret = os.execute (cmd);


print ("ok");
