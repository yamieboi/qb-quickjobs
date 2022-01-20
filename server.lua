local QBCore = exports['qb-core']:GetCoreObject()

for key, value in pairs(Cfg.Jobs) do
    RegisterNetEvent(''..value.job_name..'Pickup',function ()
        print('kuttar bacha')
        local One = value.one
        if One.item_take ~= nil then
            print(value.one.item_take)
        end
        if One.item_give ~= nil then
            print(value.one.item_give)
        end
    end)
end