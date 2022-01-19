local QBCore = exports['qb-core']:GetCoreObject()
local cache = {}

for key, value in pairs(Cfg.Jobs) do
    --[[ QBCore.Functions.Notify(value.pickup) ]]
    cache[#cache+1] = value.pickup
   
end

for key, value in pairs(cache) do
    QBCore.Functions.Notify(value)
    --[[ cache[#cache+1] = value.pickup ]]
   
end