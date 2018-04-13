-- geiger

function geigerEnable(enablePin)
   gpio.write(enablePin, gpio.HIGH)
end

function geigerDisable(enablePin)
   gpio.write(enablePin, gpio.LOW)
end