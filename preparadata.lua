preparadata={}

function preparadata.conf(dtaserver)
    
     sntp.sync("150.214.94.5", function() 
        tm = rtctime.epoch2cal(rtctime.get()+3600)
        timestamp=(string.format("%04d-%02d-%02d %02d:%02d:%02d", tm["year"], tm["mon"], tm["day"], tm["hour"], tm["min"], tm["sec"]))
        preparadata.riau(dtaserver,timestamp)
        print(timestamp)
    end)
    end
    function preparadata.riau(dtaserver)
    
    if ( dtaserver==nil)then print "vaciadtaserver"
    else
        local pp=string.match(dtaserver,"appid......................................................................")
        apid=string.sub(pp,7,26)
        secretos=string.sub(pp,35,74)
        
        
        
        toke=string.match(dtaserver,"token.......")
        token=string.sub(toke,7,13)
        pareado=require("pareado")
        pareado.comprueba(apid,secretos,token)
        
        print (apid.." "..secretos.." "..token)
        
    end
end


 package.loaded[preparadata]=nil
  module = nil
  collectgarbage()
return preparadata


