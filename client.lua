local QBCore = exports['qb-core']:GetCoreObject()
local cache = {}
local Proximity = nil
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

--[[ AddEventHandler('QBCore:Client:OnPlayerLoaded', function() ]]
    for key, value in pairs(Cfg.Jobs) do
        cache[#cache+1] = {['coords'] = value.pickup_coords,['text'] = value.pickup_3dtext,['trigger_name_server'] = ''..value.job_name..'Pickup' }
    end
--[[ end) ]]
CreateThread(function()
    while true do
        Wait(2)
        local ProximityL = GetClosestPlantloop()
        if ProximityL ~= nil and #(ProximityL.coords - GetEntityCoords(PlayerPedId()) ) <= 2  and not IsPedInAnyVehicle(PlayerPedId(), false) then
         DrawText3D(ProximityL.coords.x, ProximityL.coords.y, ProximityL.coords.z, ProximityL.text)
         if IsControlJustPressed(0,184) then
             TriggerServerEvent(ProximityL.trigger_name_server)
         end
        else 
          Wait(2000)
        end


    end
end)