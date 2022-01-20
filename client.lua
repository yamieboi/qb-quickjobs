local QBCore = exports['qb-core']:GetCoreObject()
local cacheOne = {}
local Proximity = nil
local in_progress = false
local DICT = nil
local ANIM = nil
local function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry('STRING')
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
local function LoopDistanceCheck()
    local dist = 3
    for i = 1, #cacheOne do
        local distance = #(GetEntityCoords(PlayerPedId()) - cacheOne[i].coords)
        if distance < dist then
            Proximity = cacheOne[i]

        end
    end
    return Proximity
end
local function ProgressBarPickup(Event,Name,Duration,AnimDict,AnimName,NeededItem)
 
    if AnimDict ~= nil and AnimName ~= nil then
        DICT = AnimDict
        ANIM = AnimName
    end
    if NeededItem ~= nil then
  
        QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
            if result then
                in_progress = true
                QBCore.Functions.Progressbar(Name, Name, Duration, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                 }, {
                    animDict = DICT,
                    anim = ANIM,
                    flags = 16,
                 }, {}, {}, function()
                   in_progress = false
                   DICT = nil
                   ANIM = nil
                   ClearPedTasksImmediately(PlayerPedId())
                   TriggerServerEvent(Event)
                 end, function()
                    in_progress = false
                    DICT = nil
                    ANIM = nil
                    ClearPedTasksImmediately(PlayerPedId())
                    QBCore.Functions.Notify("Canceled..", "error")
                 end)
            else
                QBCore.Functions.Notify("You're missing an item!", "error")
            end

        end, NeededItem)
    else
        in_progress = true
        QBCore.Functions.Progressbar(Name, Name, Duration, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = DICT,
            anim = ANIM,
            flags = 16,
        }, {}, {}, function()
           in_progress = false
           DICT = nil
           ANIM = nil
           ClearPedTasksImmediately(PlayerPedId())
           TriggerServerEvent(Event)
        end, function()
            in_progress = false
            DICT = nil
            ANIM = nil
            ClearPedTasksImmediately(PlayerPedId())
            QBCore.Functions.Notify("Canceled..", "error")
        end)
    end

end
--[[ AddEventHandler('QBCore:Client:OnPlayerLoaded', function() ]]
    for key, value in pairs(Cfg.Jobs) do
        local One = value.one
        if One.progressbar_enabled ~= nil and One.progressbar_enabled then
            cacheOne[#cacheOne+1] = {
                ['coords'] = One.coords,
                ['text'] = One.one_3dtext,
                ['trigger_name_server'] = ''..value.job_name..'Pickup',
                ['item_needed'] = One.item_needed,
                ['progress_enabled'] = true,
                ['progressbar_label'] = One.progressbar_label,
                ['progressbar_duration'] = One.progressbar_duration,
                ['progressbar_animdict'] = One.progressbar_animdict,
                ['progressbar_animname'] = One.progressbar_animname,
              }
        else
            cacheOne[#cacheOne+1] = {
                ['coords'] = One.coords,
                ['text'] = One.one_3dtext,
                ['trigger_name_server'] = ''..value.job_name..'Pickup',
                ['item_needed'] = One.item_needed,
                ['progress_enabled'] = false,
              }
        end

        if value.blip_enabled ~= nil and value.blip_enabled  then
            local blip = AddBlipForCoord(value.blip_coords.x, value.blip_coords.y, value.blip_coords.z)
            SetBlipSprite(blip, value.blip_sprite)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, value.blip_size)
            SetBlipColour(blip, value.blip_colour)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(value.job_name)
            EndTextCommandSetBlipName(blip)
        end
        
        if One.blip_enabled ~= nil and One.blip_enabled then
            local blip = AddBlipForCoord(One.coords.x, One.coords.y, One.coords.z)
            SetBlipSprite(blip, One.blip_sprite)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, One.blip_size)
            SetBlipColour(blip, One.blip_colour)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(One.blip_label)
            EndTextCommandSetBlipName(blip)
        end
    end
--[[ end) ]]
local function NoProgress(eventname,NeededItemLOL)
    if NeededItemLOL ~= nil then
        QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
            if result then
                TriggerServerEvent(eventname)
            else QBCore.Functions.Notify("You're missing an item!", "error") end
        end,NeededItemLOL)
    else
        TriggerServerEvent(eventname)
    end
    
    
end
CreateThread(function()
    while true do
        Wait(2)
        local ProximityL = LoopDistanceCheck()
        if not in_progress and ProximityL ~= nil and #(ProximityL.coords - GetEntityCoords(PlayerPedId()) ) <= 2  and not IsPedInAnyVehicle(PlayerPedId(), false) then
         DrawText3D(ProximityL.coords.x, ProximityL.coords.y, ProximityL.coords.z, ProximityL.text)
         if IsControlJustPressed(0,184) then
            if ProximityL.progress_enabled then
                ProgressBarPickup(ProximityL.trigger_name_server,ProximityL.progressbar_label,ProximityL.progressbar_duration,ProximityL.progressbar_animdict,ProximityL.progressbar_animname,ProximityL.item_needed)
            else
                NoProgress(ProximityL.trigger_name_server,ProximityL.item_needed)
            end
            
         end
        else 
          Wait(2000)
        end 
    end
end)