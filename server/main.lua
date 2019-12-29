local DoorInfo	= {}

RegisterServerEvent('redemrp_doorlocks:updatedoorsv')
AddEventHandler('redemrp_doorlocks:updatedoorsv', function(source, doorID, cb)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)        
        if not IsAuthorized(user.getJob(), Config.DoorList[doorID]) then
			TriggerClientEvent('chatMessage', source, "", {0, 0, 200}, "^1You do not have a key!^0")
            return
        else 
            TriggerClientEvent('redemrp_doorlocks:changedoor', _source, doorID)
        end
	
	end)
end)

RegisterServerEvent('redemrp_doorlocks:updateState')
AddEventHandler('redemrp_doorlocks:updateState', function(source, doorID, state, cb)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		if type(doorID) ~= 'number' then
			return
		end

		if type(state) ~= 'boolean' then
			return
		end

		if not Config.DoorList[doorID] then
			return
		end

		if not IsAuthorized(user.getJob(), Config.DoorList[doorID]) then
			return
		end

		doorInfo[doorID] = state

		TriggerClientEvent('redemrp_doorlocks:setState', -1, doorID, state)
	end)
end)

function IsAuthorized(jobName, doorID)
	for _,job in pairs(doorID.authorizedJobs) do
		if job == jobName then
			return true
		end
	end

	return false
end
