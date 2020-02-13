ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('99kr-burglary:Add')
AddEventHandler('99kr-burglary:Add', function(item, qtty)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	xPlayer.addInventoryItem(item, qtty)
end)

RegisterServerEvent('99kr-burglary:Remove')
AddEventHandler('99kr-burglary:Remove', function(item, qtty)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	xPlayer.removeInventoryItem(item, qtty)
end)

ESX.RegisterUsableItem('lockpick', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent('99kr-burglary:Lockpick', _source)
	TriggerClientEvent('99kr-burglary:onUse', _source)
end)

RegisterNetEvent('99kr-burglary:removeKit')
AddEventHandler('99kr-burglary:removeKit', function()
	local _source = source 
	local xPlayer = ESX.GetPlayerFromId(_source)
		xPlayer.removeInventoryItem('lockpick', 1)
end)


            ---------- Pawn Shop --------------
RegisterServerEvent('99kr-burglary:sellring')
AddEventHandler('99kr-burglary:sellring', function()
	Citizen.Wait(0)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local ring = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "ring" then
			ring = item.count
		end
	end
				
		if ring > 0 then
			xPlayer.removeInventoryItem('ring', 1)
			xPlayer.addMoney(750)
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Alıcı size $750 ödedi.', length = 4000 })
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Satacak bir yüzüğünüz yok!', length = 4000 })
		end
end)
			
RegisterServerEvent('99kr-burglary:sellrolex')
AddEventHandler('99kr-burglary:sellrolex', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local rolex = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "watch" then
			rolex = item.count
		end
	end
				
		if rolex > 0 then
			xPlayer.removeInventoryItem('watch', 1)
			xPlayer.addMoney(750)
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Alıcı size $750 ödedi.', length = 4000 })
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Satacak bir rolex saatiniz yok!', length = 4000 })
		end
end)
			
RegisterServerEvent('99kr-burglary:sellcamera')
AddEventHandler('99kr-burglary:sellcamera', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local camera = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "camera" then
			camera = item.count
		end
	end
				
	    if camera > 0 then
		  xPlayer.removeInventoryItem('camera', 1)
			xPlayer.addMoney(750)
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Alıcı size $750 ödedi.', length = 4000 })
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Satacak bir kameranız yok!', length = 4000 })
	    end
end)
			
RegisterServerEvent('99kr-burglary:sellgoldNecklace')
AddEventHandler('99kr-burglary:sellgoldNecklace', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local goldNecklace = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "necklace" then
			goldNecklace = item.count
		end
	end
				
		if goldNecklace > 0 then
			xPlayer.removeInventoryItem('necklace', 1)
			xPlayer.addMoney(1000)
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Alıcı size $1000 ödedi.', length = 4000 })
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Satacak bir altın kolyeniz yok!', length = 4000 })
		end
end)
			
RegisterServerEvent('99kr-burglary:selllaptop')
AddEventHandler('99kr-burglary:selllaptop', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local laptop = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "laptop" then
			laptop = item.count
		end
	end
				
		if laptop > 0 then
			xPlayer.removeInventoryItem('laptop', 1)
			xPlayer.addMoney(1000)
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Alıcı size $1000 ödedi.', length = 4000 })
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Satacak bir laptopunuz yok!', length = 4000 })
		end
end)
			
			
RegisterServerEvent('99kr-burglary:sellsamsungS10')
AddEventHandler('99kr-burglary:sellsamsungS10', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local samsungS10 = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "phone" then
			samsungS10 = item.count
		end
	end
				
		if samsungS10 > 1 then
			xPlayer.removeInventoryItem('phone', 1)
			xPlayer.addMoney(350)
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Alıcı size $350 ödedi.', length = 4000 })
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Satacak bir telefonunuz yok.', length = 4000 })
		end
end)
			
			
function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end

ESX.RegisterServerCallback('fizzfau_burglary:connectedcops', function(source, cb)
    local anycops = 0
    local playerList = GetPlayers()
    for i = 1, #playerList, 1 do
        local _source = playerList[i]
        local xPlayer = ESX.GetPlayerFromId(_source)
        local playerjob = xPlayer.job.name
        if playerjob == 'police' then
            anycops = anycops + 1
        end
    end
    cb(anycops)
end)