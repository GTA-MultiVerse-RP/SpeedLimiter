local isSpeedSet = false
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		
		while not IsPedInAnyVehicle(PlayerPedId(), false)
		do
			Citizen.Wait(2500)
		end

		local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		local currentSpeed = GetEntitySpeed(vehicle)

		if (currentSpeed == 0) then
			Citizen.Wait(2000)
		end

		if vehicle ~= nil then
			isSpeedSet = false
			setSpeed(vehicle)
		end
		
		while isSpeedSet and IsPedInAnyVehicle(PlayerPedId(), false)
		do
			local currentVeh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
			if currentVeh ~= vehicle then
				setSpeed(currentVeh)
			end
			Citizen.Wait(2500)
		end
	end
end)

function setSpeed(vehicle)
	local vehicleClass = GetVehicleClass(vehicle)

	if (vehicleClass ~= 16) or (vehicleClass ~= 15) then
		local speed = Config.maxSpeed
		if Config.useCategories then
			speed = Config.Categories[vehicleClass + 1].maxSpeed
--			speed = Config.Categories[vehicleClass].maxSpeed
		end
		if Config.kmh then
			speed = speed / Config.kmhValue
		else
			speed = speed / Config.mphValue
		end

		SetVehicleMaxSpeed(vehicle, speed)
		isSpeedSet = true
	end
end

-- Anti VDM --
if Config.antivdm then
	Citizen.CreateThread(function()
		while true do
			SetWeaponDamageModifier(-1553120962, 0.0)
			Citizen.Wait(10)
		end
	end)
end
	
	-- Disable Vehicle Weapons --
if Config.disablevehicleweapons then
	Citizen.CreateThread(function()
		while true do
		local wait = 500
			local playerped = PlayerPedId()
			if IsPedInAnyVehicle(playerped, false) then
				wait = 0
				local veh = GetVehiclePedIsUsing(playerped)
				if DoesVehicleHaveWeapons(veh) == 1 and vehicleweaponhash ~= 1422046295 then
					vehicleweapon, vehicleweaponhash = GetCurrentPedVehicleWeapon(playerped)
					if vehicleweapon == 1 then
						DisableVehicleWeapon(true, vehicleweaponhash, veh, playerped)
					end
				end
			end
			Citizen.Wait(wait)
		end
	end)
end