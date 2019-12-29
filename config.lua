Config = {}

Config.DoorList = {


	--
	-- Valentine Sheriff Office
	--

	{
		authorizedJobs = { 'police' },
		doorName = 'P_DOOR_VAL_JAIL02x',
		objCoords  = vector3(-276.04, 802.73, 118.41),
		textCoords  = vector3(-275.02, 802.84, 119.43),
		locked = true,
		objYaw = 10.0,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police' },
		doorName = 'P_DOOR_VAL_JAIL01X',
		objCoords  = vector3(-275.85, 812.02, 118.41),
		textCoords  = vector3(-277.06, 811.83, 119.38),
		objYaw = -170.0,
		locked = true,
		distance = 3.0
	},

	--
	-- Rhodes Sheriff Office
	--

	{
		authorizedJobs = { 'police' },
		doorName = 'P_DOORRHOSHERIFF02X',
		objCoords  = vector3(1359.71, -1305.97, 76.76),
		textCoords  = vector3(1358.42, -1305.71, 77.72),
		objYaw = 160.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police' },
		doorName = 'P_DOOR04X',
		objCoords  = vector3(1359.12, -1297.56, 76.78),
		textCoords  = vector3(1358.51, -1298.95,77.78),
		objYaw = -110.0,
		locked = true,
		distance = 3.0
	},

	--
	-- Blackwater Sheriff Office
	--

	{
		textCoords = vector3(-757.27, -1269.34, 44.04),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_door01',
				objYaw = 90.0,
				objCoords = vector3(-757.05, -1268.49, 43.06)
			},

			{
				objName = 'v_ilev_ph_door002',
				objYaw = 90.0,
				objCoords = vector3(-757.05, -1269.93, 43.06)
			}
		}
	},


}
