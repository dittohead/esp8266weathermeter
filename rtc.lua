-- rtc.lua

require "config"

function syncRTC()
   sntp.sync(server_host,
       function(sec, usec, server, info)
        print('time sync', sec, usec, server)
        end,
       function()
        print('failed!')
       end,
       true
)
end 