ESX = nil
local isInMarker = false

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    if Config.ShowBlip then
        local blip = AddBlipForCoord(Config.Location.x, Config.Location.y, Config.Location.z)
        SetBlipSprite(blip, Config.BlipSprite)
        SetBlipScale(blip, 0.7)
        SetBlipDisplay(blip, 4)
        SetBlipColour(blip, Config.BlipColor)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(tostring(Config.BlipName))
        EndTextCommandSetBlipName(blip)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if isInMarker then
            if Config.DisplayHelpText then
                ESX.ShowHelpNotification(Config.Translations[Config.Locale]['help_text'])
            end
            if IsControlJustPressed(0, Config.OpenKey) then
                SendNUIMessage({
                    action = 'open'
                })
                SetNuiFocus(true, true)
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(250)

        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        isInMarker = false
        local distance = Vdist(coords, Config.Location.x, Config.Location.y, Config.Location.z)
        if distance <= 1.3 then
            isInMarker = true
        end
    end
end)

RegisterNUICallback('close', function() 

    SendNUIMessage({
        action = 'close'
    })
    SetNuiFocus(false, false)

end)

RegisterNUICallback('washMoney', function(data)

    TriggerServerEvent('nightstudio_blackmoney:washMoney', tonumber(data.amount))
end)