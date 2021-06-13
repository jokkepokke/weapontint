ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer 
end)

RegisterNetEvent('hujo_tint:aloita')
AddEventHandler('hujo_tint:aloita', function(source)
    AvaaMenu(source)
end)

function AvaaMenu(source)
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'weapon_color', {
		title = 'Change weapon tint',
		align = 'bottom-right',
		elements = {
		{ label = 'Black', value = 1 },
	    { label = 'Gold', value = 2 },
	    { label = 'Pink', value = 3 },
	    { label = 'Bronze', value = 4 },
	    { label = 'Blue stripe', value = 5 },
	    { label = 'Red stripe', value = 6 },
	    { label = 'Silver', value = 7 }
		}
	}, function(data, menu)
      if data.current.value then
				TriggerEvent('hujo_tint:vari', data.current.value)
        menu.close()
			end
	end, function(data, menu)
		menu.close()
	end)
end


RegisterNetEvent('hujo_tint:vari')
AddEventHandler('hujo_tint:vari', function(tulos)
  local pelaaja = GetPlayerPed(-1)
  local ase = GetSelectedPedWeapon(pelaaja)
	SetPedWeaponTintIndex(pelaaja, ase, tulos)
end)