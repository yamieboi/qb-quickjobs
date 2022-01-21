local QBCore = exports['qb-core']:GetCoreObject()

for key, value in pairs(Cfg.Jobs) do
    if value.one then
        RegisterNetEvent('' .. value.job_name .. 'ONE', function()
                
            local src = source
            local Player = QBCore.Functions.GetPlayer(src)
            local One = value.one
            if One.item_needed then
              if One.item_needed_amount and One.item_needed_amount > 0 then
                if Player.Functions.RemoveItem(One.item_needed, One.item_needed_amount) then
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_needed], 'remove')
                    
                    if One.item_take ~= nil then
                        if One.item_take_amount and One.item_take_amount > 0 then
                            if Player.Functions.RemoveItem(One.item_take, One.item_take_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_take], 'remove')
                                if One.item_give ~= nil then
                                    if One.item_give_amount and  One.item_give_amount > 0 then
                                        if Player.Functions.AddItem(One.item_give, One.item_give_amount) then
                                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                                        else
                                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                        end
                                    else
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
                        end

                    else
                        if One.item_give ~= nil then
                            if One.item_give_amount and One.item_give_amount > 0 then
                                if Player.Functions.AddItem(One.item_give, One.item_give_amount) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            else
                                if Player.Functions.AddItem(One.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end

                        end
                    end               
                else
                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                end
             else
                if Player.Functions.RemoveItem(One.item_needed, 1) then
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_needed], 'remove')
                    
                    if One.item_take ~= nil then
                        if One.item_take_amount and One.item_take_amount > 0 then
                            if Player.Functions.RemoveItem(One.item_take, One.item_take_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_take], 'remove')
                                if One.item_give ~= nil then
                                    if One.item_give_amount and  One.item_give_amount > 0 then
                                        if Player.Functions.AddItem(One.item_give, One.item_give_amount) then
                                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                                        else
                                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                        end
                                    else
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
                        end

                    else
                        if One.item_give ~= nil then
                            if One.item_give_amount and One.item_give_amount > 0 then
                                if Player.Functions.AddItem(One.item_give, One.item_give_amount) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            else
                                if Player.Functions.AddItem(One.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end

                        end
                    end               
                else
                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                end
             end
            else
                if One.item_take ~= nil then
                    if One.item_take_amount and One.item_take_amount > 0 then
                        if Player.Functions.RemoveItem(One.item_take, One.item_take_amount) then
                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_take], 'remove')
                            if One.item_give ~= nil then
                                if One.item_give_amount and One.item_give_amount > 0 then
                                    if Player.Functions.AddItem(One.item_give, item_give_amount) then
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                                    else
                                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                    end
                                else
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
                    end

                else
                    if One.item_give ~= nil then
                        if One.item_give_amount and One.item_give_amount > 0 then
                            if Player.Functions.AddItem(One.item_give, One.item_give_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        else
                            if Player.Functions.AddItem(One.item_give, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[One.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        end

                    end
                end          
            end

            if One.give_money_amount and One.give_money_amount > 0 and One.give_money_account  then
                if One.give_money_account == 'cash' then
                    Player.Functions.AddMoney("cash", One.give_money_amount)                  
                elseif One.give_money_account == 'bank' then
                    Player.Functions.AddMoney("bank", One.give_money_amount)                    
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
              if Two.item_needed_amount and Two.item_needed_amount > 0 then
                if Player.Functions.RemoveItem(Two.item_needed, Two.item_needed_amount) then
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_needed], 'remove')
                    
                    if Two.item_take ~= nil then
                        if Two.item_take_amount and Two.item_take_amount > 0 then
                            if Player.Functions.RemoveItem(Two.item_take, Two.item_take_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_take], 'remove')
                                if Two.item_give ~= nil then
                                    if Two.item_give_amount and  Two.item_give_amount > 0 then
                                        if Player.Functions.AddItem(Two.item_give, Two.item_give_amount) then
                                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                        else
                                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                        end
                                    else
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
                        end
    
                    else
                        if Two.item_give ~= nil then
                            if Two.item_give_amount and Two.item_give_amount > 0 then
                                if Player.Functions.AddItem(Two.item_give, Two.item_give_amount) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            else
                                if Player.Functions.AddItem(Two.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end
    
                        end
                    end               
                else
                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                end
             else
                if Player.Functions.RemoveItem(Two.item_needed, 1) then
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_needed], 'remove')
                    
                    if Two.item_take ~= nil then
                        if Two.item_take_amount and Two.item_take_amount > 0 then
                            if Player.Functions.RemoveItem(Two.item_take, Two.item_take_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_take], 'remove')
                                if Two.item_give ~= nil then
                                    if Two.item_give_amount and  Two.item_give_amount > 0 then
                                        if Player.Functions.AddItem(Two.item_give, Two.item_give_amount) then
                                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                        else
                                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                        end
                                    else
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
                        end
    
                    else
                        if Two.item_give ~= nil then
                            if Two.item_give_amount and Two.item_give_amount > 0 then
                                if Player.Functions.AddItem(Two.item_give, Two.item_give_amount) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            else
                                if Player.Functions.AddItem(Two.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end
    
                        end
                    end               
                else
                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                end
             end
            else
                if Two.item_take ~= nil then
                    if Two.item_take_amount and Two.item_take_amount > 0 then
                        if Player.Functions.RemoveItem(Two.item_take, Two.item_take_amount) then
                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_take], 'remove')
                            if Two.item_give ~= nil then
                                if Two.item_give_amount and Two.item_give_amount > 0 then
                                    if Player.Functions.AddItem(Two.item_give, item_give_amount) then
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                                    else
                                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                    end
                                else
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
                    end
    
                else
                    if Two.item_give ~= nil then
                        if Two.item_give_amount and Two.item_give_amount > 0 then
                            if Player.Functions.AddItem(Two.item_give, Two.item_give_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        else
                            if Player.Functions.AddItem(Two.item_give, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Two.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        end
    
                    end
                end          
            end
    
            if Two.give_money_amount and Two.give_money_amount > 0 and Two.give_money_account  then
                if Two.give_money_account == 'cash' then
                    Player.Functions.AddMoney("cash", Two.give_money_amount)                  
                elseif Two.give_money_account == 'bank' then
                    Player.Functions.AddMoney("bank", Two.give_money_amount)                    
                end
            end
        end)
    end



    if value.three then
        RegisterNetEvent('' .. value.job_name .. 'THREE', function()
            
            local src = source
            local Player = QBCore.Functions.GetPlayer(src)
            local Three = value.three
            if Three.item_needed then
              if Three.item_needed_amount and Three.item_needed_amount > 0 then
                if Player.Functions.RemoveItem(Three.item_needed, Three.item_needed_amount) then
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_needed], 'remove')
                    
                    if Three.item_take ~= nil then
                        if Three.item_take_amount and Three.item_take_amount > 0 then
                            if Player.Functions.RemoveItem(Three.item_take, Three.item_take_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_take], 'remove')
                                if Three.item_give ~= nil then
                                    if Three.item_give_amount and  Three.item_give_amount > 0 then
                                        if Player.Functions.AddItem(Three.item_give, Three.item_give_amount) then
                                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                        else
                                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                        end
                                    else
                                        if Player.Functions.AddItem(Three.item_give, 1) then
                                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                        else
                                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                        end
                                    end
    
                                end
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        else
                            if Player.Functions.RemoveItem(Three.item_take, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_take], 'remove')
                                if Three.item_give ~= nil then
                                    if Player.Functions.AddItem(Three.item_give, 1) then
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                    else
                                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                    end
                                end
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        end
    
                    else
                        if Three.item_give ~= nil then
                            if Three.item_give_amount and Three.item_give_amount > 0 then
                                if Player.Functions.AddItem(Three.item_give, Three.item_give_amount) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            else
                                if Player.Functions.AddItem(Three.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end
    
                        end
                    end               
                else
                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                end
             else
                if Player.Functions.RemoveItem(Three.item_needed, 1) then
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_needed], 'remove')
                    
                    if Three.item_take ~= nil then
                        if Three.item_take_amount and Three.item_take_amount > 0 then
                            if Player.Functions.RemoveItem(Three.item_take, Three.item_take_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_take], 'remove')
                                if Three.item_give ~= nil then
                                    if Three.item_give_amount and  Three.item_give_amount > 0 then
                                        if Player.Functions.AddItem(Three.item_give, Three.item_give_amount) then
                                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                        else
                                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                        end
                                    else
                                        if Player.Functions.AddItem(Three.item_give, 1) then
                                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                        else
                                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                        end
                                    end
    
                                end
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        else
                            if Player.Functions.RemoveItem(Three.item_take, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_take], 'remove')
                                if Three.item_give ~= nil then
                                    if Player.Functions.AddItem(Three.item_give, 1) then
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                    else
                                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                    end
                                end
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        end
    
                    else
                        if Three.item_give ~= nil then
                            if Three.item_give_amount and Three.item_give_amount > 0 then
                                if Player.Functions.AddItem(Three.item_give, Three.item_give_amount) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            else
                                if Player.Functions.AddItem(Three.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end
    
                        end
                    end               
                else
                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                end
             end
            else
                if Three.item_take ~= nil then
                    if Three.item_take_amount and Three.item_take_amount > 0 then
                        if Player.Functions.RemoveItem(Three.item_take, Three.item_take_amount) then
                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_take], 'remove')
                            if Three.item_give ~= nil then
                                if Three.item_give_amount and Three.item_give_amount > 0 then
                                    if Player.Functions.AddItem(Three.item_give, item_give_amount) then
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                    else
                                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                    end
                                else
                                    if Player.Functions.AddItem(Three.item_give, 1) then
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                    else
                                        TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                    end
                                end
    
                            end
                        else
                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                        end
                    else
                        if Player.Functions.RemoveItem(Three.item_take, 1) then
                            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_take], 'remove')
                            if Three.item_give ~= nil then
                                if Player.Functions.AddItem(Three.item_give, 1) then
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                                else
                                    TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                                end
                            end
                        else
                            TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                        end
                    end
    
                else
                    if Three.item_give ~= nil then
                        if Three.item_give_amount and Three.item_give_amount > 0 then
                            if Player.Functions.AddItem(Three.item_give, Three.item_give_amount) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        else
                            if Player.Functions.AddItem(Three.item_give, 1) then
                                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Three.item_give], 'add')
                            else
                                TriggerClientEvent("QBCore:Notify", src, "ERROR! Something Went Wrong", "error")
                            end
                        end
    
                    end
                end          
            end
    
            if Three.give_money_amount and Three.give_money_amount > 0 and Three.give_money_account  then
                if Three.give_money_account == 'cash' then
                    Player.Functions.AddMoney("cash", Three.give_money_amount)                  
                elseif Three.give_money_account == 'bank' then
                    Player.Functions.AddMoney("bank", Three.give_money_amount)                    
                end
            end
        end)
    end

end
