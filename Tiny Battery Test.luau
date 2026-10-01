-- this was made in basalt (a little known executor) so your executor might not have _getDeviceBattery().

if typeof(_getDeviceBattery) == 'function' then
    print("the battery is: ", _getDeviceBattery(), "%")
elseif typeof(_getDeviceBattery) == 'nil' then
    print("Function Not Supported")
end
