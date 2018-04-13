-- config.lua

-- ----GPIO--------
GEIGER_COUNTER_PIN = 7
GEIGER_COUNTER_ENABLE = 11
I2C_SDA = 5
I2CSCL = 6
BAT_VOLTAGE = ADC
POWER_SOURCE = 2 -- low - batt, high - dc

-- -----WEB--------
RTC_HOSTS = {"89.109.251.21"}
narodmon_cfg={}
narodmon_cfg.login = "login here" --narodmon logn
narodmon_cfg.pwd = 12345 --narodmon password
narodmon_cfg.host = "narodmon.ru"
narodmon_cfg.port = 1883

function gpioInit()
         gpio.mode(GEIGER_COUNTER_PIN, gpio.INT)
         gpio.mode(GEIGER_COUNTER_ENABLE, gpio.OUTPUT)
         gpio.write(GEIGER_COUNTER_ENABLE, gpio.LOW)
         gpio.mode(POWER_SOURCE, gpio.INPUT)
end

-- -----Wi-FI-------
wifi_database = {}
wifi_database['SSID_name'] = password

