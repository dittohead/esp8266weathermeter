-- wifi.lua
require "config"

function wifiConfig()

end

function wifiGetSSIDs()
end

function wifiConnectStation(SSID, SSIDpwd)
         stationCfg={}
         stationCfg.ssid = SSID
         stationCfg.pwd = SSIDpwd
         wifi.sta.config(station_cfg)
         wifi.sta.connect()
         tmr.alarm(0, 500, 1, function()
                      if wifi.sta.getip() == nil then
                        print("Connecting to AP...")
                      else
                      print('IP: ',wifi.sta.getip())
                      sync_rtc(ntp_server)
                      tmr.stop(0)
                      end
         end)
end
 