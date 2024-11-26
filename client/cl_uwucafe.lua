local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        PlayerJob = QBCore.Functions.GetPlayerData().job
        uwuZones()
    end
end)

AddEventHandler('onResourceStop', function(resourceName) 
    if GetCurrentResourceName() == resourceName then
        for k, v in pairs(Config.Zones) do
            exports['qb-target']:RemoveZone("uwucafe"..k)
        end
        DeletePed(jobPed)
    end 
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    uwuZones()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    for k, v in pairs(Config.Zones) do
        exports['qb-target']:RemoveZone("uwucafe"..k)
    end
    DeletePed(jobPed)
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(0)
    end
end

function uwuZones()
    for k, v in pairs(Config.Zones) do
        exports['qb-target']:AddCircleZone("uwucafe"..k, v.coords, v.radius, {
            name = "uwucafe"..k,
            debugPoly = false,
            useZ=true,
        }, {
            options = {
                {
                    type = "client",
                    event = v.event,
                    icon = v.icon,
                    label = v.label,
                    job = v.job,
                },
            },
            distance = 1.5
        })
    end
    if not DoesEntityExist(jobPed) then

	RequestModel(Config.GaragePed) while not HasModelLoaded(Config.GaragePed) do Wait(0) end

	jobPed = CreatePed(0, Config.GaragePed, Config.PedLocation, false, false)

	SetEntityAsMissionEntity(jobPed, true, true)
	SetPedFleeAttributes(jobPed, 0, 0)
	SetBlockingOfNonTemporaryEvents(jobPed, true)
	SetEntityInvincible(jobPed, true)
	FreezeEntityPosition(jobPed, true)
	loadAnimDict("amb@world_human_leaning@female@wall@back@holding_elbow@idle_a")        
	TaskPlayAnim(jobPed, "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a", "idle_a", 8.0, 1.0, -1, 01, 0, 0, 0, 0)

	exports['qb-target']:AddTargetEntity(jobPed, { 
	    options = {
		{ 
		    type = "client",
		    event = "qb-uwucafe:client:jobGarage",
		    icon = "fa-solid fa-clipboard-check",
		    label = "Garage",
		    job = "uwu"
		},
		{ 
		    type = "client",
		    event = "qb-uwucafe:client:storeGarage",
		    icon = "fa-solid fa-clipboard-check",
		    label = "Store Vehicle",
		    job = "uwu"
		},
	    }, 
	    distance = 1.5, 
	})
    end
end

CreateThread(function()
    DecorRegister("uwu_vehicle", 1)
end)

RegisterNetEvent('qb-uwucafe:client:jobGarage', function(vehicle)
    local vehicle = Config.Vehicle
    local coords = Config.VehicleSpawn
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "UWU"..tostring(math.random(1000, 9999)))
        SetVehicleColours(veh, 112, 112)
        SetVehicleLivery(veh, 15)
        DecorSetFloat(veh, "uwu_vehicle", 1)
        SetEntityAsMissionEntity(veh, true, true)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(veh)
        SetVehicleFuelLevel(veh, 100.0)
    end, coords, true)
end)

RegisterNetEvent('qb-uwucafe:client:storeGarage', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if DecorExistOn((veh), "uwu_vehicle") then
        QBCore.Functions.DeleteVehicle(veh)
        QBCore.Functions.Notify("You returned the vehicle.", "success")
    else
        QBCore.Functions.Notify("This is not a work vehicle.", "error")
    end
end)

CreateThread(function()
    exports.ox_target:addBoxZone({
		name = "uwu_tray",
		coords = Config.coords.tray.coords,
		size = Config.coords.tray.size,
		rotation = Config.coords.tray.rotation,
		debug = Config.Zonedebug,
		options = {
			{
				type = "client",
				onSelect = function()
					exports.ox_inventory:openInventory('stash', 'uwu_tray')
				end,
				icon = "fa fa-clipboard",
				label = ('Tray'),
				distance = 1.5,
				groups = "uwu",
			}
		}
	})

	exports.ox_target:addBoxZone({
		name = "uwu_hotstorage",
		coords = Config.coords.hotstorage.coords,
		size = Config.coords.hotstorage.size,
		rotation = Config.coords.hotstorage.rotation,
		debug = Config.Zonedebug,
		options = {
			{
				type = "client",
				onSelect = function()
					exports.ox_inventory:openInventory('stash', 'uwu_hotstorage')
				end,
				icon = "fa fa-box",
				label = ('Storage'),
				distance = 1.5,
				groups = "uwu",
			}
		}
	})

	exports.ox_target:addBoxZone({
		name = "uwu_storage",
		coords = Config.coords.storage.coords,
		size = Config.coords.storage.size,
		rotation = Config.coords.storage.rotation,
		debug = Config.Zonedebug,
		options = {
			{
				type = "client",
				onSelect = function()
					exports.ox_inventory:openInventory('stash', 'uwu_storage')
				end,
				icon = "fa fa-box",
				label = ('Cold Storage'),
				distance = 2,
				groups = "uwu",
			}
		}
	})
end)

RegisterNetEvent("qb-uwucafe:client:openShop", function()
    TriggerServerEvent("exports.ox_inventory:openInventory", "shop", "uwuShop", Config.Items)
end)

RegisterNetEvent('qb-uwucafe:clientToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("qb-uwucafe:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Cash Register",
		submitText = "Charge",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", 
                type = "text", 
                isRequired = true --
            },
            {
                text = "   Bill Price ($)",
                name = "billprice", 
                type = "number",
                isRequired = false
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("qb-uwucafe:server:billPlayer", bill.citizenid, bill.billprice)
    end
end)

-- SHOP --
exports.ox_target:addBoxZone({
    coords = vector3(-606.43, -1095.77, 22.32),
    size = vec3(1, 1, 1),
    rotation = 45,
    options = {
        {
            name = 'uwu_shop',
            icon = 'fa-solid fa-shopping-basket',
            label = 'Ingredient Shop',
            groups = {
                Config.Jobname
            },
            onSelect = function ()
                exports.ox_inventory:openInventory('shop', {type = 'uwuShop'})
            end
        },
    }
})