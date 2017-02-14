servidor={}
function servidor.up()
    
    html="<h1>Micro-latch v0.1</h1><br>"
    html=html..' <head>  <meta http-equiv="refresh" content="30"></head> '
    html=html.."ip asignada : ".. wifi.sta.getip()
    html=html..'<form action="192.168.1.149" method="get">'
    
    html=html..'APP ID :  <input type="text" name="appid"><br>'
    html=html..'SECRET: <input type="text" name="secret"><br>'
    html=html..'token: <input type="text" name="token"><br>'
    html=html..'<input type="hidden" name="opcion" value="00paring">'
    html=html..'<input type="submit" value="Submit"></form><br> '
    
    print ("Levantando servidor http en :".. wifi.sta.getip())
    
    srv=net.createServer(net.TCP) 
    
    srv:listen(80,function(conn) 
        conn:on("receive",function(conn,payload) 
            
            local rawdata=(payload)
            
            conn:send(html)
            servidor.data(rawdata) 
             local oddata=string.match(payload,"00reset")
             if (oddata=="00reset")then  cierra(payload) end
        end) 
        conn:on("sent",function(conn) conn:close() end)
        
    end)
     if (file.exists("ACOUNTS"))then
           
           local estado=require("estado")
            sihtml()
           estado.send()end
end
function servidor.data(rawdata)
    if (rawdata==nil)then print "ignoring payload"
    else
        
        
        local rawda=string.sub(rawdata,0,130)
        --print (rawdata)
        local iddata=string.match(rawda,"00paring")
       
        --if (iddata=="00paring")then datap=rawdata  prepareado(datap)end
        -- if (oddata=="00reset")then datar=rawdata borrar(datar)else
        --  print "Datos recogidos erroneos"
        -- 
        
        --  else
        if (iddata=="00paring")then           
                transmite(rawda)
            end 
            
            --  end
            
        end
        
    end
    function transmite(rawdata)
        local preparadata=require("preparadata")
        preparadata.conf(rawdata)
        
        
    end
    function cierra(rawdata)
        
        tokie=string.match(rawdata,"newsletter=Yes")
        if (tokie=="newsletter=Yes")then
            file.remove("ACOUNTS")
            file.remove("SK")
            file.remove("APPID")
            html="<h1>Micro-latch v0.1</h1><br>"
       
        html=html.."<h1>REINICIE EL DISPOSITIVO</h1> "
            
        end
    end
    function sihtml()
        
        html="<h1>Micro-latch v0.1</h1><br>"
         html=html..' <head>  <meta http-equiv="refresh" content="5"></head> '
        html=html.."ip asignada : ".. wifi.sta.getip()
        if file.exists("APPID") then
            file.open("APPID", "r") 
            apid=(file.read('\n'))
            file.close()
        end
        
        html=html.."<h1>AP: "..apid.." pareada</h1>"
        html=html.."<br> <br>"
        html=html..'<form action="192.168.1.149" method="get">'
        html=html..'<input type="checkbox" id="newsletter" name="newsletter" value="Yes" >'
        html=html..'<label for="newsletter">desparear</label>'
        html=html..'<input type="hidden" name="opcion" value="00reset">'
        html=html..'<input type="submit" value="Submit"></form><br> '
    end
    collectgarbage()
    return servidor
    
    