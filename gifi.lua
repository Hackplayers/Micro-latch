gifi={}

function gifi.conf()
   
    
    station_cfg={}
    station_cfg.ssid="ONO2323"
    station_cfg.pwd="anubitopito1974"
    wifi.sta.config(station_cfg)
    wifi.sta.setip({ip="192.168.1.149",netmask="255.255.255.0",gateway="192.168.1.1"})
    conex=(wifi.sta.status())
    return conex
end
	
return gifi
