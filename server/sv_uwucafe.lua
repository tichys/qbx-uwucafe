local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-uwucafe:server:makeOmurice', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'onion', 1)
    exports.ox_inventory:RemoveItem(src,'chicken_thighs', 1)
    exports.ox_inventory:RemoveItem(src,'virgin_olive_oil', 1)
    exports.ox_inventory:RemoveItem(src,'rice', 1)
    exports.ox_inventory:RemoveItem(src,'soy_sauce', 1)
    exports.ox_inventory:RemoveItem(src,'plate', 1)
    exports.ox_inventory:AddItem(src,'om_nom_omurice', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCurrye', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'onion', 1)
    exports.ox_inventory:RemoveItem(src,'rice', 1)
    exports.ox_inventory:RemoveItem(src,'chicken_thighs', 1)
    exports.ox_inventory:RemoveItem(src,'plate', 1)
    exports.ox_inventory:AddItem(src,'kira_kira_currye', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeSando', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'pullman_bread', 1)
    exports.ox_inventory:RemoveItem(src,'chicken_breast', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:RemoveItem(src,'butter', 1)
    exports.ox_inventory:RemoveItem(src,'plate', 1)
    exports.ox_inventory:AddItem(src,'sugoi_katsu_sando', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeSteak', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'steak', 1)
    exports.ox_inventory:AddItem(src,'hamburg_stake', 1)
end)

RegisterNetEvent('qb-uwucafe:server:cleanTallGlass', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'glass_tall_dirty', 1)
    exports.ox_inventory:AddItem(src,'glass_tall', 1)
end)

RegisterNetEvent('qb-uwucafe:server:cleanBowl', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'bar_bowl_dirty', 1)
    exports.ox_inventory:AddItem(src,'bar_bowl', 1)
end)

RegisterNetEvent('qb-uwucafe:server:cleanPlate', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'plate_dirty', 1)
    exports.ox_inventory:AddItem(src,'plate', 1)
end)

RegisterNetEvent('qb-uwucafe:server:cleanCup', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'cup_dirty', 1)
    exports.ox_inventory:AddItem(src,'cup', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCoffee1', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'matcha_powder', 1)
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:RemoveItem(src,'brewed_coffee', 1)
    exports.ox_inventory:AddItem(src,'matcha_coffee', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCoffee2', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'cocoa_powder', 1)
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:RemoveItem(src,'cup', 1)
    exports.ox_inventory:AddItem(src,'hot_chocolate', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCoffee3', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'cocoa_powder', 1)
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:RemoveItem(src,'cup', 1)
    exports.ox_inventory:AddItem(src,'lovely_hot_chocolate', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeTea1', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'dried_boba_tapioca_pearls', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:RemoveItem(src,'juice', 1)
    exports.ox_inventory:RemoveItem(src,'ice', 1)
    exports.ox_inventory:AddItem(src,'booba_milk_tea_2', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeTea2', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'lemon', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'mint', 1)
    exports.ox_inventory:RemoveItem(src,'ice', 1)
    exports.ox_inventory:RemoveItem(src,'cup', 1)
    exports.ox_inventory:AddItem(src,'sweet_herbal_tea', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeRiceBalls', function()
    local src = source
    if exports.ox_inventory:GetItemCount(src, "rice") < 1 and not exports.ox_inventory:GetItemCount(src, "sea_moss") < 1  then return end
    exports.ox_inventory:RemoveItem(src,'rice', 1)
    exports.ox_inventory:RemoveItem(src,'sea_moss', 1)
    exports.ox_inventory:AddItem(src,'rice_balls', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeSoup', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'noodles', 1)
    exports.ox_inventory:RemoveItem(src,'onion', 1)
    exports.ox_inventory:RemoveItem(src,'butter', 1)
    exports.ox_inventory:RemoveItem(src,'chicken', 1)
    exports.ox_inventory:RemoveItem(src,'bar_bowl', 1)
    exports.ox_inventory:AddItem(src,'warm_chicken_noodle', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeChocolate', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'cocoa_powder', 1)
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:AddItem(src,'awwdorable_valentines_chocolate', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeShortcake', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:RemoveItem(src,'baking_powder', 1)
    exports.ox_inventory:RemoveItem(src,'strawberry', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'butter', 1)
    exports.ox_inventory:RemoveItem(src,'plate', 1)
    exports.ox_inventory:AddItem(src,'strawberry_shortcake', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCream', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'rice_flour', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:AddItem(src,'meowchi_mochi_ice_cream', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCake', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:RemoveItem(src,'plate', 1)
    exports.ox_inventory:AddItem(src,'oxygen_cake', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeParfait', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:RemoveItem(src,'strawberry', 1)
    exports.ox_inventory:RemoveItem(src,'butter', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:AddItem(src,'purrfect_parfait', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCupcake', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'baking_powder', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'butter', 1)
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:AddItem(src,'ballbarry_cupcake', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCupcake2', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'butter', 1)
    exports.ox_inventory:AddItem(src,'dragos_fire_cupcake', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeCookie', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'lemon', 1)
    exports.ox_inventory:RemoveItem(src,'baking_powder', 1)
    exports.ox_inventory:AddItem(src,'gingerkitty_cookie', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makePancakes', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:RemoveItem(src,'milk', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:AddItem(src,'doki_doki_pancakes', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeMacaroonBrown', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'brown_dye', 1)
    exports.ox_inventory:AddItem(src,'cat_macaroon_brown', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeMacaroonPink', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'pink_dye', 1)
    exports.ox_inventory:AddItem(src,'cat_macaroon_pink', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeMacaroonTurquoise', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'turquoise_dye', 1)
    exports.ox_inventory:AddItem(src,'cat_macaroon_turquoise', 1)
end)

RegisterNetEvent('qb-uwucafe:server:makeMacaroonGreen', function()
    local src = source
    if not Player then return end
    exports.ox_inventory:RemoveItem(src,'flour', 1)
    exports.ox_inventory:RemoveItem(src,'egg', 1)
    exports.ox_inventory:RemoveItem(src,'sugar', 1)
    exports.ox_inventory:RemoveItem(src,'green_dye', 1)
    exports.ox_inventory:AddItem(src,'cat_macaroon_green', 1)
end)

RegisterNetEvent('qb-uwucafe:server:takeIce', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    exports.ox_inventory:AddItem(src,'ice', 1)
end)

QBCore.Functions.CreateUseableItem('gingerkitty_cookie', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('kira_kira_currye', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('om_nom_omurice', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('dragos_fire_cupcake', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('ballbarry_cupcake', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('purrfect_parfait', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('oxygen_cake', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('meowchi_mochi_ice_cream', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('strawberry_shortcake', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('awwdorable_valentines_chocolate', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('warm_chicken_noodle', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('rice_balls', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('doki_doki_pancakes', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('hamburg_stake', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('sugoi_katsu_sando', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('cat_macaroon_pink', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('cat_macaroon_green', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('cat_macaroon_turquoise', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('cat_macaroon_brown', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Eat', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('sweet_herbal_tea', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Drink', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('booba_milk_tea_2', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Drink', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('lovely_hot_chocolate', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Drink', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('hot_chocolate', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Drink', source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('matcha_coffee', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if exports.ox_inventory:RemoveItem(src,item.name, 1, item.slot) then
        TriggerClientEvent('qb-uwucafe:client:Drink', source, item.name)
    end
end)


RegisterNetEvent('qb-uwucafe:server:billPlayer', function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == 'uwu' then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                billed.Functions.RemoveMoney('bank', amount)
                TriggerClientEvent('QBCore:Notify', source, 'You charged a customer.', 'success')
                TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'You have been charged $'..amount..' for your order at UwU Cafe.')
                exports['qb-management']:AddMoney('uwu', amount)
                else
                    TriggerClientEvent('QBCore:Notify', source, 'Must be a valid amount above 0.', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'You cannot bill yourself.', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'Player not online', 'error')
        end
    end
end)

local stashes = {
    {
        id = 'uwu_tray',
        label = ('Tray'),
        slots = 5,
        weight = 10000,
        groups = nil,
        coords = Config.coords.tray.coords,
    },
    {
        id = 'uwu_hotstorage',
        label = ('Storage'),
        slots = 50,
        weight = 75000,
        groups = { ['uwu'] = 0},
        coords = Config.coords.hotstorage.coords,
    },
    {
        id = 'uwu_storage',
        label = ('Cold Storage'),
        slots = 20,
        weight = 100000,
        groups = { ['uwu'] = 0},
        coords = Config.coords.storage.coords,
    }
}

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        for _, stash in pairs(stashes) do
            exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner)
        end
    end
end)

exports.qbx_management:RegisterBossMenu({
    groupName = 'uwu',
    coords = vec3(1238.41, -348.82, 69.08),
    size = vec3(1.5, 1.5, 1.5),
    rotation = 39.68,
    type = 'job',
    stashSlots = 100,
    stashWeight = 4000000,
})