ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)


RegisterServerEvent('nightstudio_blackmoney:washMoney')
AddEventHandler('nightstudio_blackmoney:washMoney', function(amount)
    amount = tonumber(amount)

    local xPlayer = ESX.GetPlayerFromId(source)
    local blackMoney = xPlayer.getAccount('black_money').money

    if xPlayer then
        if amount == nil then
            TriggerClientEvent('mb_notify:sendNotification', source, Config.Translations[Config.Locale]['invalid_amount'], { type = 'error' })
        elseif amount <= 0 or amount > blackMoney then
            TriggerClientEvent('mb_notify:sendNotification', source, Config.Translations[Config.Locale]['not_enough_money'], { type = 'error' })
        else
            local tax = Config.Percentage / 100
            xPlayer.removeAccountMoney('black_money', amount)
            xPlayer.addMoney(amount * tax)
            TriggerClientEvent('mb_notify:sendNotification', source, Config.Translations[Config.Locale]['money_wash_1']..amount..Config.Translations[Config.Locale]['money_wash_2'], { type = 'success' })
        end
    end
end)