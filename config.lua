-- config.lua

-- ----GPIO--------
geigerCounterPIN = gpio13
geigerCounterEnablePIN = gpio9
i2cSDA = gpio14
i2cSCL = gpio12
battVoltage = ADC
powerSource = 4 -- low - batt, high - dc

-- -----WEB--------
rtcHost = {"89.109.251.21"}
narodmon_cfg={}
narodmon_cfg.login = "login here" --narodmon logn
narodmon_cfg.pwd = 12345 --narodmon password
narodmon_cfg.host = "narodmon.ru"
narodmon_cfg.port = 1883
