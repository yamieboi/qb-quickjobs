local QBCore = exports['qb-core']:GetCoreObject()

for key, value in pairs(Cfg.Jobs) do
    RegisterNetEvent(''..value.job_name..'Pickup',function ()
        print('kuttar bacha')
        if value.pickup_item_take ~= nil then
            print(value.pickup_item_take)
        end
        if value.pickup_item_give ~= nil then
            print(value.pickup_item_give)
        end
    end)
end