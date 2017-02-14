estado={}
function estado.send()
    latch1 = 3
latch2 = 4
gpio.mode(latch1, gpio.OUTPUT)
gpio.mode(latch2, gpio.OUTPUT)
    urls="https://latch.elevenpaths.com/api/1.3/status/"
    tmr.alarm(1, 10000, 1, function() estado.estado() end)
end
function estado.estado()
   sntp.sync("150.214.94.5", function() -- success
        tm = rtctime.epoch2cal(rtctime.get()+3600)
        timestamp=(string.format("%04d-%02d-%02d %02d:%02d:%02d", tm["year"], tm["mon"], tm["day"], tm["hour"], tm["min"], tm["sec"]))
        --funcion
    end)
    if (timestamp==nil)then
        
        print "esperando sincronia sntp"else
            ---construir headers y firma
 if file.exists("ACOUNTS") then
            
            file.open("ACOUNTS", "r")                
            cuenta=(file.read('\n'))
            file.close()
            
            file.open("APPID", "r") 
            apid=(file.read('\n'))
            file.close()
            
            file.open("SK", "r")
            secretos=(file.read('\n'))
            file.close()
        end 

        local statuso="GET\n"..timestamp.."\n\n/api/1.3/status/"..cuenta
        firma=(crypto.hmac("sha1",statuso,secretos))
        local b64= crypto.toBase64(firma)
        local header_table={}  
        table.insert(header_table, 'Authorization: 11PATHS '..apid..' '..b64..'\r\n')
        table.insert(header_table, 'X-11Paths-Date: '..timestamp..'\r\n')
        table.insert(header_table, 'Request Signature: '..b64..'\r\n') 
        local header=table.concat(header_table)
        http.request(urls..cuenta,"GET",header,' ', function(code, data)
            print(code, data)
            if (code < 0) then
                print("HTTP request failed")
            else
                local ps=string.sub(data,0,75)
                local lt=string.match(ps,'"status":"on"')
                if (lt=='"status":"on"')then gpio.write(latch2,gpio.HIGH) print "GPIo2 ON"
                else gpio.write(latch2,gpio.LOW) print "GPIo2 OFF"end
                
                
                
            end
        end)
        end
end
return estado
