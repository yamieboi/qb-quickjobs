local QBCore = exports['qb-core']:GetCoreObject()
local cacheOne = {}
local cacheTwo = {}
local cacheThree = {}
local Proximity = nil
local ProximityTwo = nil
local ProximityThree = nil
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
local function LoopDistanceCheckTwo()
    local dist = 3
    for i = 1, #cacheTwo do
        local distance = #(GetEntityCoords(PlayerPedId()) - cacheTwo[i].coords)
        if distance < dist then
            ProximityTwo = cacheTwo[i]

        end
    end
    return ProximityTwo
end
local function LoopDistanceCheckThree()
    local dist = 3
    for i = 1, #cacheThree do
        local distance = #(GetEntityCoords(PlayerPedId()) - cacheThree[i].coords)
        if distance < dist then
            ProximityThree = cacheThree[i]

        end
    end
    return ProximityThree
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
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    for key, value in pairs(Cfg.Jobs) do



  

        if value.one ~= nil then 
             One = value.one 
          if One.progressbar_enabled ~= nil and One.progressbar_enabled then
            cacheOne[#cacheOne+1] = {
                ['coords'] = One.coords,
                ['text'] = One.text_3dlabel,
                ['trigger_name_server'] = ''..value.job_name..'ONE',
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
                ['text'] = One.text_3dlabel,
                ['trigger_name_server'] = ''..value.job_name..'ONE',
                ['item_needed'] = One.item_needed,
                ['progress_enabled'] = false,
              }
          end
        end
        if value.two ~= nil then
          Two = value.two
         if Two.progressbar_enabled ~= nil and Two.progressbar_enabled then
            cacheTwo[#cacheTwo+1] = {
                ['coords'] = Two.coords,
                ['text'] = Two.text_3dlabel,
                ['trigger_name_server'] = ''..value.job_name..'TWO',
                ['item_needed'] = Two.item_needed,
                ['progress_enabled'] = true,
                ['progressbar_label'] = Two.progressbar_label,
                ['progressbar_duration'] = Two.progressbar_duration,
                ['progressbar_animdict'] = Two.progressbar_animdict,
                ['progressbar_animname'] = Two.progressbar_animname,
            }
         else
            cacheTwo[#cacheTwo+1] = {
                ['coords'] = Two.coords,
                ['text'] = Two.text_3dlabel,
                ['trigger_name_server'] = ''..value.job_name..'TWO',
                ['item_needed'] = Two.item_needed,
                ['progress_enabled'] = false,
            }
         end
        end
        if value.three ~= nil then
            Three = value.three
           if Three.progressbar_enabled ~= nil and Three.progressbar_enabled then
            cacheThree[#cacheThree+1] = {
                  ['coords'] = Three.coords,
                  ['text'] = Three.text_3dlabel,
                  ['trigger_name_server'] = ''..value.job_name..'TWO',
                  ['item_needed'] = Three.item_needed,
                  ['progress_enabled'] = true,
                  ['progressbar_label'] = Three.progressbar_label,
                  ['progressbar_duration'] = Three.progressbar_duration,
                  ['progressbar_animdict'] = Three.progressbar_animdict,
                  ['progressbar_animname'] = Three.progressbar_animname,
              }
           else
              cacheThree[#cacheThree+1] = {
                  ['coords'] = Three.coords,
                  ['text'] = Three.text_3dlabel,
                  ['trigger_name_server'] = ''..value.job_name..'TWO',
                  ['item_needed'] = Three.item_needed,
                  ['progress_enabled'] = false,
              }
           end
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
        if Two.blip_enabled ~= nil and Two.blip_enabled then
            local blip = AddBlipForCoord(Two.coords.x, Two.coords.y, Two.coords.z)
            SetBlipSprite(blip, Two.blip_sprite)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, Two.blip_size)
            SetBlipColour(blip, Two.blip_colour)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(Two.blip_label)
            EndTextCommandSetBlipName(blip)
        end
        if Three.blip_enabled ~= nil and Three.blip_enabled then
            local blip = AddBlipForCoord(Three.coords.x, Three.coords.y, Three.coords.z)
            SetBlipSprite(blip, Three.blip_sprite)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, Three.blip_size)
            SetBlipColour(blip, Three.blip_colour)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(Three.blip_label)
            EndTextCommandSetBlipName(blip)
        end
    end
end)
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
        local ProximityOne = LoopDistanceCheck()
        if not in_progress and ProximityOne ~= nil and #(ProximityOne.coords - GetEntityCoords(PlayerPedId()) ) <= 2  and not IsPedInAnyVehicle(PlayerPedId(), false) then
         DrawText3D(ProximityOne.coords.x, ProximityOne.coords.y, ProximityOne.coords.z, ProximityOne.text)
         if IsControlJustPressed(0,184) then
            if ProximityOne.progress_enabled then
                ProgressBarPickup(ProximityOne.trigger_name_server,ProximityOne.progressbar_label,ProximityOne.progressbar_duration,ProximityOne.progressbar_animdict,ProximityOne.progressbar_animname,ProximityOne.item_needed)
            else
                NoProgress(ProximityOne.trigger_name_server,ProximityOne.item_needed)
            end
        end
        else 
          Wait(2000)
        end 
    end
end)
CreateThread(function()
    while true do
        Wait(2)
        local ProximityTwo = LoopDistanceCheckTwo()
        if not in_progress and ProximityTwo ~= nil and #(ProximityTwo.coords - GetEntityCoords(PlayerPedId()) ) <= 2  and not IsPedInAnyVehicle(PlayerPedId(), false) then
         DrawText3D(ProximityTwo.coords.x, ProximityTwo.coords.y, ProximityTwo.coords.z, ProximityTwo.text)
         if IsControlJustPressed(0,184) then
            if ProximityTwo.progress_enabled then
                ProgressBarPickup(ProximityTwo.trigger_name_server,ProximityTwo.progressbar_label,ProximityTwo.progressbar_duration,ProximityTwo.progressbar_animdict,ProximityTwo.progressbar_animname,ProximityTwo.item_needed)
            else
                NoProgress(ProximityTwo.trigger_name_server,ProximityTwo.item_needed)
            end
        end
        else 
          Wait(2000)
        end 
    end
end)
CreateThread(function()
    while true do
        Wait(2)
        local ProximityThree = LoopDistanceCheckThree()
        if not in_progress and ProximityThree ~= nil and #(ProximityThree.coords - GetEntityCoords(PlayerPedId()) ) <= 2  and not IsPedInAnyVehicle(PlayerPedId(), false) then
         DrawText3D(ProximityThree.coords.x, ProximityThree.coords.y, ProximityThree.coords.z, ProximityThree.text)
         if IsControlJustPressed(0,184) then
            if ProximityThree.progress_enabled then
                ProgressBarPickup(ProximityThree.trigger_name_server,ProximityThree.progressbar_label,ProximityThree.progressbar_duration,ProximityThree.progressbar_animdict,ProximityThree.progressbar_animname,ProximityThree.item_needed)
            else
                NoProgress(ProximityThree.trigger_name_server,ProximityThree.item_needed)
            end
        end
        else 
          Wait(2000)
        end 
    end
end)

