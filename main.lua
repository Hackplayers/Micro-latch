
tmr.alarm(1, 20000, 2, function() arranca() end)

function arranca()
    
    local gifi=require("gifi")
    
    gifi.conf()
    
    print(gifi.conf())
    
    if(gifi.conf()==5)then 
        
        local servidor=require("servidor")
        local dtaserver=(servidor.up())  
        
    end
    
    
end







sntp.sync("150.214.94.5", function() -- success
    tm = rtctime.epoch2cal(rtctime.get()+3600)
    timestamp=(string.format("%04d-%02d-%02d %02d:%02d:%02d", tm["year"], tm["mon"], tm["day"], tm["hour"], tm["min"], tm["sec"]))
    --funcion
    print(timestamp)
end)

