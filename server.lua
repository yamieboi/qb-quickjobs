local QBCore = exports['qb-core']:GetCoreObject()

for key, value in pairs(Cfg.Jobs) do
    RegisterNetEvent(''..value.job_name..'Pickup',function ()
        print('kuttar bacha')
    end)
end