pareado={}
urlp="https://latch.elevenpaths.com/api/1.3/pair/"
function pareado.send(apid,secreto,token)
    
    tmr.alarm(1, 10000, 1, function() pareado.latch(apid,secreto,token) end)
end

  
function pareado.latch(apid,secretos,token)
   sntp.sync("150.214.94.5", function() -- success
        tm = rtctime.epoch2cal(rtctime.get()+3600)
        timestamp=(string.format("%04d-%02d-%02d %02d:%02d:%02d", tm["year"], tm["mon"], tm["day"], tm["hour"], tm["min"], tm["sec"]))
        --funcion
    end)
    if (timestamp==nil)then
        
        print "esperando sincronia sntp"else
            ---construir headers y firma
    local pareado="GET\n"..timestamp.."\n\n/api/1.3/pair/"..token
    firma=(crypto.hmac("sha1",pareado,secretos))
    local b64= crypto.toBase64(firma)
    local header_table={}  
    table.insert(header_table, 'Authorization: 11PATHS '..apid..' '..b64..'\r\n')
    table.insert(header_table, 'X-11Paths-Date: '..timestamp..'\r\n')
    table.insert(header_table, 'Request Signature: '..b64..'\r\n') 
    local header=table.concat(header_table)
    http.request(urlp..token,"GET",header,' ', function(code, data)
        print(code, data)
        if (code < 0) then
            print("HTTP request failed")
        else
            local ps=string.sub(data,0,107)
            local aco=string.match(ps,"accountId...................................................................")
            if (aco==nil)then print " noooooooooooo"
            else
                cuenta=string.sub(aco,13,76)
                --print (cuenta)
                --grabando datos persistentes account
                file.open("ACOUNTS", "w") 
                -- print"Grabando ACOUNTS.file"
                file.write(cuenta)
                file.close()
                ---grabando APPID
                file.open("APPID", "w") 
                -- print"Grabando APPID"
                file.write(apid)
                file.close()
                ---grabando SECRET
                file.open("SK", "w")
                file.write(secretos)
                file.close()
                
            end
        end
    end)
    end
    
end

return pareado