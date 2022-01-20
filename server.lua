local QBCore = exports['qb-core']:GetCoreObject()

for key, value in pairs(Cfg.Jobs) do
    if value.one then
        RegisterNetEvent('' .. value.job_name .. 'ONE', function()
                
            local src = source
            local Player = QBCore.Functions.GetPlayer(src)
            local One = value.one
            if One.item_needed then
                if Player.Functions.RemoveItem(One.item_needed, 1) then
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_needed], 'remove')
                    
                    if One.item_take ~= nil then
                        if Player.Functions.RemoveItem(One.item_take, 1) then
                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_take], 'remove')
                            if One.item_give ~= nil then
                                if Player.Functions.AddItem(One.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end
                        else
                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                        end
                    else
                        if One.item_give ~= nil then
                            if Player.Functions.AddItem(One.item_give, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        end
                    end
                
                
                else
                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                end
            else
                if One.item_take ~= nil then
                    if Player.Functions.RemoveItem(One.item_take, 1) then
                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_take], 'remove')
                        if One.item_give ~= nil then
                            if Player.Functions.AddItem(One.item_give, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        end
                    else
                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                    end
                else
                    if One.item_give ~= nil then
                        if Player.Functions.AddItem(One.item_give, 1) then
                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                        else
                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                        end
                    end
                end
            
            end
        end)
    end
    if value.two then
        RegisterNetEvent('' .. value.job_name .. 'TWO', function()
                
                local src = source
                local Player = QBCore.Functions.GetPlayer(src)
                local Two = value.two
                if Two.item_needed then
                    if Player.Functions.RemoveItem(Two.item_needed, 1) then
                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_needed], 'remove')
                        
                        if Two.item_take ~= nil then
                            if Player.Functions.RemoveItem(Two.item_take, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_take], 'remove')
                                if Two.item_give ~= nil then
                                    if Player.Functions.AddItem(Two.item_give, 1) then
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                    else
                                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                    end
                                end
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        else
                            if Two.item_give ~= nil then
                                if Player.Functions.AddItem(Two.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end
                        end
                    
                    
                    else
                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                    end
                else
                    if Two.item_take ~= nil then
                        if Player.Functions.RemoveItem(Two.item_take, 1) then
                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_take], 'remove')
                            if Two.item_give ~= nil then
                                if Player.Functions.AddItem(Two.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end
                        else
                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                        end
                    else
                        if Two.item_give ~= nil then
                            if Player.Functions.AddItem(Two.item_give, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        end
                    end
                
                end
        end)
    end
end
