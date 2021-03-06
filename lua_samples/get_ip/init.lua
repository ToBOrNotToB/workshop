-- Set up WiFI
wifi.setmode(wifi.STATION)
wifi.sta.config("wifi-namr-here", "wifi-password-here")

-- Tell us when we've gotten an IP
tmr.alarm(0, 500, 1, function()
   if wifi.sta.getip()==nil
    then
      print("Connecting to AP...")
   else
      print("Connected as: " .. wifi.sta.getip())
      tmr.stop(0)
   end
end)

