local QBCore = exports['qb-core']:GetCoreObject()
local cache = {}
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
local function GetClosestPlantloop()
    local dist = 3
    for i = 1, #cache do
        local distance = #(GetEntityCoords(PlayerPedId()) - cache[i].coords)
        if distance < dist then
            Proximity = cache[i]

        end
    end
    return Proximity
end
local function ProgressBarPickup(Event,Name,Duration,AnimDict,AnimName)
    in_progress = true
    if AnimDict ~= nil and AnimName ~= nil then
        DICT = AnimDict
        ANIM = AnimName
    end
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
--[[ AddEventHandler('QBCore:Client:OnPlayerLoaded', function() ]]
    for key, value in pairs(Cfg.Jobs) do
        cache[#cache+1] = {
            ['coords'] = value.pickup_coords,
            ['text'] = value.pickup_3dtext,
            ['trigger_name_server'] = ''..value.job_name..'Pickup',
            ['pickup_progress_name'] = value.pickup_progress_name,
            ['pickup_progress_duration'] = value.pickup_progress_duration,
            ['pickup_progress_animation_dict'] = value.pickup_progress_animation_dict, 
            ['pickup_progress_animation_name'] = value.pickup_progress_animation_name,

        }
    end
--[[ end) ]]
CreateThread(function()
    while true do
        Wait(2)
        local ProximityL = GetClosestPlantloop()
        if not in_progress and ProximityL ~= nil and #(ProximityL.coords - GetEntityCoords(PlayerPedId()) ) <= 2  and not IsPedInAnyVehicle(PlayerPedId(), false) then
         DrawText3D(ProximityL.coords.x, ProximityL.coords.y, ProximityL.coords.z, ProximityL.text)
         if IsControlJustPressed(0,184) then
            ProgressBarPickup(ProximityL.trigger_name_server,ProximityL.pickup_progress_name,ProximityL.pickup_progress_duration,ProximityL.pickup_progress_animation_dict,ProximityL.pickup_progress_animation_name)
         end
        else 
          Wait(2000)
        end


    end
end)