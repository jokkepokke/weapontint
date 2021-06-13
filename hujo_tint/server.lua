ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('weapontint', function(source)
    TriggerClientEvent('hujo_tint:aloita', source)
end)