local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("qb-wepdrop:server:recieveItems", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local chance = math.random(1, 100)
    local chance2 = math.random(1, 100)
    if Player then
        if chance >= 0 and chance <= 49 then
            if chance2 < 50 then
                exports['qb-inventory']:AddItem(src, Config.PistolTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PistolTierReward1], 'add')
                exports['qb-inventory']:AddItem(src, Config.PistolTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PistolTierReward1], 'add')
               	exports['qb-inventory']:AddItem(src, Config.PistolTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PistolTierReward1], 'add')
                exports['qb-inventory']:AddItem(src, Config.PistolTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PistolTierReward1], 'add')
            elseif chance2 >= 50 then
                exports['qb-inventory']:AddItem(src, Config.PistolTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PistolTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.PistolTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PistolTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.PistolTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PistolTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.PistolTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PistolTierReward2], 'add')
            end
        elseif chance >= 50 and chance <= 79 then
            if chance2 < 50 then
                exports['qb-inventory']:AddItem(src, Config.SmgTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SmgTierReward1], 'add')
                exports['qb-inventory']:AddItem(src, Config.SmgTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SmgTierReward1], 'add')
                exports['qb-inventory']:AddItem(src, Config.SmgTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SmgTierReward1], 'add')
                exports['qb-inventory']:AddItem(src, Config.SmgTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SmgTierReward1], 'add')
            elseif chance2 >= 50 then
                exports['qb-inventory']:AddItem(src, Config.SmgTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SmgTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.SmgTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SmgTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.SmgTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SmgTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.SmgTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SmgTierReward2], 'add')
            end
        elseif chance >= 80 and chance <= 100 then
            if chance2 < 50 then
                exports['qb-inventory']:AddItem(src, Config.ARTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ARTierReward1], 'add')
                exports['qb-inventory']:AddItem(src, Config.ARTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ARTierReward1], 'add')
                exports['qb-inventory']:AddItem(src, Config.ARTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ARTierReward1], 'add')
                exports['qb-inventory']:AddItem(src, Config.ARTierReward1, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ARTierReward1], 'add')
            elseif chance2 >= 50 then
                exports['qb-inventory']:AddItem(src, Config.ARTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ARTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.ARTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ARTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.ARTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ARTierReward2], 'add')
                exports['qb-inventory']:AddItem(src, Config.ARTierReward2, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ARTierReward2], 'add')
            end
        end
    end
end)

RegisterServerEvent('qb-wepdrop:server:getDropPhone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        if QBCore.Functions.HasItem(src, 'emptydropphone', 1) then
            if Player.Functions.GetMoney('cash') >= Config.DropPhonePrice then
                exports['qb-inventory']:RemoveItem(src, 'emptydropphone', 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['emptydropphone'], 'remove')
                Player.Functions.RemoveMoney('cash', Config.DropPhonePrice)

                exports['qb-inventory']:AddItem(src, 'dropphone', 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['dropphone'], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, 'You don\'t have enough money!', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', src, 'You don\'t have the required items!', 'error')
        end
    end
end)

RegisterServerEvent('drop:server:startCooldown', function()
    local src = source
    TriggerClientEvent('drop:client:dropFalse', -1)
    SetTimeout(Config.GlobalCooldown * (60 * 1000), function()
        TriggerClientEvent('drop:client:dropTrue', -1)
    end)
end)

QBCore.Functions.CreateCallback('qb-wepdrop:server:getCops', function(source, cb)
	local amount = 0
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(v)
        if Player ~= nil then 
            if (Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty) then
                amount = amount + 1
            end
        end
	end
	cb(amount)
end)

QBCore.Functions.CreateUseableItem("dropphone", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if QBCore.Functions.HasItem(src, item.name, 1) then
        TriggerClientEvent("qb-wepdrop:client:CreateDrop", src, true, 400)
    end
end)
