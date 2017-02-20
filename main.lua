tmr.alarm(1, 20000, 2, function() arranca() end)

function arranca()
    
    local gifi=require("gifi")
    
    gifi.conf()
    
    print(gifi.conf())
    
    if(gifi.conf()==5)then 
       
        local configuracion=require("configuracion")
        local xxx=(configuracion.latch())
        local apid=string.sub(xxx,1,20)
        local secreto=string.sub(xxx,21,60)
        local token=string.sub(xxx,61,66)
        
        
       
        if file.exists("ACOUNTS") then
           print ("consultando el estado de app: "..apid)
        print""
        
            local estado=require("estado")
            estado.send()
          else
        print ("Intentando parear app: "..apid)
        print""
        print ("con token: "..token)
        local pareado=require("pareado")
        pareado.send(apid,secreto,token)
       
        print" "
     
        
    end
    
  end
  
end





