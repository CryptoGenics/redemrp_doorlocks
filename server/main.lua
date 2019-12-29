local DoorInfo	= {}

RegisterServerEvent('redemrp_doorlocks:updatedoorsv')
AddEventHandler('redemrp_doorlocks:updatedoorsv', function(source, doorID, cb)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)        
        if not IsAuthorized(user.getJob(), Config.DoorList[doorID]) then
			TriggerClientEvent('chatMessage', source, "", {0, 0, 200}, "^1Your are not LEO!^0")
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

		if not IsAuthorized(user.getJob(), Config.DoorList[doorID]) then
			return
		end

		DoorInfo[doorID] = {}

		DoorInfo[doorID].state = state
		DoorInfo[doorID].doorID = doorID

		TriggerClientEvent('redemrp_doorlocks:setState', -1, doorID, state)
    end)
end)

function IsAuthorized(jobName, doorID)
	for i=1, #doorID.authorizedJobs, 1 do
		if doorID.authorizedJobs[i] == jobName then
			return true
		end
	end

	return false
end