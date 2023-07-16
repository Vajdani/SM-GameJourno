
dofile( "$SURVIVAL_DATA/Scripts/game/survival_shapes.lua" )
dofile( "$SURVIVAL_DATA/Scripts/util.lua" )
dofile( "$SURVIVAL_DATA/Scripts/game/survival_constants.lua" )
dofile( "$SURVIVAL_DATA/Scripts/game/survival_projectiles.lua" )

-- A chance of 100 makes the item 100 times more likely than with a chance of 1

local random_loot = {
	{ uuid = obj_plantables_carrot, 		chance = 100 + 15,	quantity = 32 },
	{ uuid = obj_plantables_redbeet, 		chance = 100 + 15,	quantity = 32 },
	{ uuid = obj_plantables_tomato, 		chance = 100 + 15,	quantity = 32 },
	{ uuid = obj_plantables_banana, 		chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_plantables_blueberry, 		chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_plantables_orange, 		chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_plantables_potato, 		chance = 100 + 20,	quantity = 32 },

	{ uuid = obj_consumable_sunshake, 		chance = 100 + 15 },

	{ uuid = obj_consumable_gas,			chance = 100 + 60,	quantity = 32 },
	{ uuid = obj_consumable_battery,		chance = 100 + 40,	quantity = 32 },
	{ uuid = obj_consumable_water,			chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_consumable_chemical,		chance = 100 + 70,	quantity = 32 },
	{ uuid = obj_consumable_fertilizer,		chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_consumable_component,		chance = 100 + 70,	quantity = 32 },
	{ uuid = obj_consumable_inkammo,		chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_consumable_glowstick,		chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_consumable_soilbag,		chance = 100 + 40,	quantity = 32 },

	{ uuid = obj_resource_circuitboard,		chance = 100 + 50 },

	{ uuid = obj_seed_carrot,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_redbeet,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_tomato,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_potato,				chance = 100 + 20,	quantity = 32 },

	{ uuid = blk_glass,						chance = 100 + 20,	quantity = 32 },

	{ uuid = jnt_bearing, 					chance = 100 + 5,		quantity = 32 },
}

local random_epicloot = {
	{ uuid = obj_plantables_carrot, 		chance = 100 + 15,	quantity = 32 },
	{ uuid = obj_plantables_redbeet, 		chance = 100 + 15,	quantity = 32 },
	{ uuid = obj_plantables_tomato, 		chance = 100 + 15,	quantity = 32 },
	{ uuid = obj_plantables_banana, 		chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_plantables_blueberry, 		chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_plantables_orange, 		chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_plantables_potato, 		chance = 100 + 20,	quantity = 32 },

	{ uuid = obj_consumable_sunshake, 		chance = 100 + 15 },
	{ uuid = obj_consumable_longsandwich, 	chance = 100 + 15 },

	{ uuid = obj_consumable_gas,			chance = 100 + 60,	quantity = 32 },
	{ uuid = obj_consumable_battery,		chance = 100 + 40,	quantity = 32 },
	{ uuid = obj_consumable_water,			chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_consumable_chemical,		chance = 100 + 70,	quantity = 32 },
	{ uuid = obj_consumable_fertilizer,		chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_consumable_component,		chance = 100 + 70,	quantity = 32 },
	{ uuid = obj_consumable_inkammo,		chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_consumable_glowstick,		chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_consumable_soilbag,		chance = 100 + 40,	quantity = 32 },

	{ uuid = obj_resource_circuitboard,		chance = 100 + 50 },

	{ uuid = obj_seed_carrot,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_redbeet,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_tomato,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_potato,				chance = 100 + 20,	quantity = 32 },

	{ uuid = obj_seed_banana,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_orange,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_blueberry,			chance = 100 + 20,	quantity = 32 },

	{ uuid = blk_glass,						chance = 100 + 20,	quantity = 32 },

	{ uuid = jnt_bearing, 					chance = 100 + 10,	quantity = 32 },
}

local random_warehouseloot = {
	{ uuid = obj_plantables_carrot, 		chance = 100 + 5,		quantity = 32 },
	{ uuid = obj_plantables_redbeet, 		chance = 100 + 5,		quantity = 32 },
	{ uuid = obj_plantables_tomato, 		chance = 100 + 5,		quantity = 32 },
	{ uuid = obj_plantables_banana, 		chance = 100 + 5,		quantity = 32 },
	{ uuid = obj_plantables_blueberry, 		chance = 100 + 5,		quantity = 32 },
	{ uuid = obj_plantables_orange, 		chance = 100 + 5,		quantity = 32 },
	{ uuid = obj_plantables_pineapple, 		chance = 100 + 5,		quantity = 32 },
	{ uuid = obj_plantables_broccoli, 		chance = 100 + 5,		quantity = 32 },
	{ uuid = obj_consumable_sunshake, 		chance = 100 + 15 },
	{ uuid = obj_plantables_potato, 		chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_resource_circuitboard,		chance = 100 + 50 },
	{ uuid = obj_consumable_gas,			chance = 100 + 60,	quantity = 32 },
	{ uuid = obj_consumable_battery,		chance = 100 + 40,	quantity = 32 },
	{ uuid = obj_consumable_fertilizer,		chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_consumable_soilbag,		chance = 100 + 40,	quantity = 32 },
	{ uuid = obj_consumable_component,		chance = 100 + 70,	quantity = 32 },
}

local random_officeloot = {
	{ uuid = obj_consumable_component,		chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_resource_circuitboard,		chance = 100 + 10, 	quantity = 32 },
	{ uuid = obj_consumable_battery,		chance = 100 + 10,	quantity = 32 },
	{ uuid = obj_consumable_sunshake, 		chance = 100 + 30, 	quantity = 32 },
	{ uuid = obj_plantables_potato, 		chance = 100 + 30,	quantity = 32 },
	{ uuid = obj_consumable_glowstick,		chance = 100 + 30,	quantity = 32 },
	{ uuid = obj_consumable_inkammo,		chance = 100 + 65,	quantity = 32 },
	{ uuid = obj_consumable_glue,			chance = 100 + 65,	quantity = 32 },
}

local random_loot_startarea = {
	{ uuid = obj_scrap_smallwheel,			chance = 100 + 10 },
	{ uuid = obj_consumable_gas,			chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_consumable_chemical,		chance = 100 + 15,	quantity = 32 },
	{ uuid = obj_consumable_soilbag,		chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_plantables_carrot,			chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_plantables_redbeet,		chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_plantables_tomato,			chance = 100 + 25,	quantity = 32 },
	{ uuid = obj_seed_carrot,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_redbeet,				chance = 100 + 20,	quantity = 32 },
	{ uuid = obj_seed_tomato,				chance = 100 + 20,	quantity = 32 },
	{ uuid = jnt_bearing,					chance = 100 + 10 },
}

local lootTables = {}

-- Loot crates
lootTables.loot_crate_epic = {
	slots = function() return 3 end,
	selectOne = {
		{ uuid = obj_outfitpackage_common, 			chance = 100 + 50 },
		{ uuid = obj_outfitpackage_rare, 			chance = 100 + 30 },
		{ uuid = obj_outfitpackage_epic, 			chance = 100 + 10 },

		{ uuid = obj_consumable_soilbag, 			chance = 100 + 50,	quantity = 32 },
		{ uuid = obj_consumable_component, 			chance = 100 + 50,	quantity = 32 },

		{ uuid = jnt_suspensionoffroad_01, 			chance = 100 + 20 },
		{ uuid = jnt_suspensionsport_01, 			chance = 100 + 20 },
		{ uuid = jnt_interactive_piston_01, 		chance = 100 + 20 },
		{ uuid = obj_interactive_switch, 			chance = 100 + 10 },
		{ uuid = obj_interactive_button, 			chance = 100 + 10 },
		{ uuid = obj_interactive_radio, 			chance = 100 + 5 },
		{ uuid = obj_interactive_horn, 				chance = 100 + 5 },
		{ uuid = obj_interactive_logicgate, 		chance = 100 + 10 },
		{ uuid = obj_interactive_timer, 			chance = 100 + 5 },
		{ uuid = obj_interactive_gasengine_01, 		chance = 100 + 10 },
		{ uuid = obj_interactive_electricengine_01, chance = 100 + 5 },
		{ uuid = obj_interactive_controller_01, 	chance = 100 + 10 },
		{ uuid = obj_interactive_driverseat_01, 	chance = 100 + 10 },
		{ uuid = obj_interactive_seat_01, 			chance = 100 + 20 },
		{ uuid = obj_interactive_driversaddle_01, 	chance = 100 + 10 },
		{ uuid = obj_interactive_saddle_01, 		chance = 100 + 20 },
	},
	randomLoot = random_epicloot
}

lootTables.loot_crate_epic_warehouse = {
	slots = function() return 3 end,
	selectOne = {
		{ uuid = jnt_suspensionoffroad_03, 			chance = 100 + 1 },
		{ uuid = jnt_suspensionsport_03, 			chance = 100 + 1 },
		{ uuid = jnt_interactive_piston_03, 		chance = 100 + 1 },
		{ uuid = obj_interactive_gasengine_03, 		chance = 100 + 1 },
		{ uuid = obj_interactive_electricengine_03, chance = 100 + 1 },
		{ uuid = obj_interactive_controller_03, 	chance = 100 + 1 },
		{ uuid = obj_interactive_driverseat_03, 	chance = 100 + 1 },
		{ uuid = obj_interactive_seat_03, 			chance = 100 + 1 },
		{ uuid = obj_interactive_driversaddle_03, 	chance = 100 + 1 },
		{ uuid = obj_interactive_saddle_03, 		chance = 100 + 1 },
	},
	randomLoot = random_warehouseloot
}

lootTables.loot_crate_standard = {
	slots = function() return randomStackAmount( 1, 2, 3 ) end,
	selectOne = {
		{ uuid = obj_outfitpackage_common, 		chance = 100 + 3 },

		{ uuid = obj_consumable_component,		chance = 100 + 47 },
		{ uuid = nil,							chance = 100 + 50 }, -- No loot from selectOne
	},
	randomLoot = random_loot
}

lootTables.loot_crate_startarea = {
	slots = function() return randomStackAmount( 1, 2, 3 ) end,
	selectOne = {
		{ uuid = obj_consumable_sunshake,		chance = 100 + 1 },
		{ uuid = obj_consumable_component,		chance = 100 + 1 },
		{ uuid = obj_resource_circuitboard,		chance = 100 + 1 },
		{ uuid = nil,							chance = 100 + 2 }, -- No loot from selectOne
	},
	randomLoot = random_loot_startarea
}

lootTables.loot_crate_standard_warehouse = {
	slots = function() return randomStackAmount( 1, 2, 3 ) end,
	selectOne = {
		{ uuid = obj_plantables_broccoli, 		chance = 100 + 1,		quantity = 32 },
		{ uuid = obj_plantables_pineapple, 		chance = 100 + 1,		quantity = 32 },
		{ uuid = nil,							chance = 100 + 5 }, -- No loot from selectOne
	},
	randomLoot = random_warehouseloot
}

lootTables.loot_warehouse_filecabinet = {
	slots = function() return randomStackAmount( 1, 1.5, 3 ) end,
	selectOne = {
		{ uuid = obj_interactive_radio,			chance = 100 + 2,		quantity = 32 },
		{ uuid = obj_decor_pillow,				chance = 100 + 4,		quantity = 32 },
		{ uuid = obj_decor_toiletroll,			chance = 100 + 8,		quantity = 32 },
		{ uuid = obj_decor_mug,					chance = 100 + 20,	quantity = 32 },
		{ uuid = obj_decor_stackedpaper,		chance = 100 + 60,	quantity = 32 },
	},
	randomLoot = random_officeloot
}

lootTables.loot_warehouse_locker = {
	slots = function() return randomStackAmount( 1, 2.25, 4 ) end,
	randomLoot = random_officeloot
}

lootTables.loot_ruinchest = {
	slots = function() return randomStackAmount( 1, 2, 6 ) end,
	selectOne = nil,
	randomLoot = random_loot
}

lootTables.loot_ruinchest_startarea = {
	slots = function() return randomStackAmount( 1, 1.5, 4 ) end,
	selectOne = nil,
	randomLoot = random_loot_startarea
}

lootTables.loot_woc = {
	slots = function() return 1 end,
	randomLoot = {
	{ uuid = obj_resource_steak,				chance = 100 + 1 },
	}
}

lootTables.loot_woc_milk = {
	slots = function() return 1 end,
	randomLoot = {
		{ uuid = obj_consumable_milk,			chance = 100 + 1 },
	}
}

lootTables.loot_glow_goop = {
	slots = function() return 1 end,
	randomLoot = {
		{ uuid = obj_resource_glowpoop,			chance = 100 + 1 },
	}
}

lootTables.loot_totebot_green = {
	slots = function() return 1 end,
	randomLoot = {
		{ uuid = obj_resource_circuitboard,		chance = 100 + 1 },
	}
}

lootTables.loot_haybot = {
	slots = function() return randomStackAmount( 0, 0.5, 1 ) end,
	randomLoot = {
		{ uuid = obj_consumable_component,		chance = 100 + 1 },
		{ uuid = obj_resource_circuitboard,		chance = 100 + 2 },
	}
}

lootTables.loot_tapebot = {
	slots = function() return randomStackAmount( 0, 0.5, 1 ) end,
	randomLoot = {
		{ uuid = obj_consumable_component,		chance = 100 + 2 },
		{ uuid = obj_consumable_battery,		chance = 100 + 5 },
	}
}

lootTables.loot_farmbot = {
	slots = function() return randomStackAmount( 2, 2, 3 ) end,
	selectOne = {
		{ uuid = obj_survivalobject_keycard,	chance = 100 + 1 },
	},
	randomLoot = {
		{ uuid = obj_consumable_component,		chance = 100 + 2,		quantity = 32 },
		{ uuid = obj_resource_circuitboard,		chance = 100 + 1,		quantity = 32 },
	}
}
























function SelectOne( list )
	local sum = 0
	for _,v in ipairs( list ) do
		sum = sum + v.chance --NOTE: Could precalculate sum
	end

	local rand = math.random() * sum

	sum = 0
	for _,v in ipairs( list ) do
		sum = sum + v.chance

		if rand <= sum then
			local quantity = 32
			if v.quantity then
				if type( v.quantity ) == "function" then
					quantity = v.quantity()
				else
					quantity = v.quantity
				end
			end
			return {
				uuid = v.uuid,
				quantity = quantity
			}
		end
	end
	return nil
end

function SelectLoot( lootTableName, slotLimit )
	local lootList = {}

	local lootTable = lootTables[lootTableName]

	local slots = 32 --[[lootTable.slots and lootTable.slots() or 1
	if slotLimit then
		slots = math.min( slots, slotLimit )
	end]]

	if slots > 0 and lootTable.selectOne then
		local loot = SelectOne( lootTable.selectOne )
		if loot and loot.uuid then
			if isAnyOf( lootTableName, { "loot_crate_epic", "loot_crate_epic_warehouse" } ) then
				loot.epic = true
			end
			lootList[#lootList + 1] = loot
		end
	end

	while #lootList < slots and lootTable.randomLoot do
		local loot = SelectOne( lootTable.randomLoot )
		assert( loot and loot.uuid )
		lootList[#lootList + 1] = loot
	end

	return lootList
end

function SpawnLoot( origin, lootList, worldPosition, ringAngle )

	if worldPosition == nil then
		if type( origin ) == "Shape" then
			worldPosition = origin.worldPosition
		elseif type( origin ) == "Player" or type( origin ) == "Unit" then
			local character = origin:getCharacter()
			if character then
				worldPosition = character.worldPosition
			end
		elseif type( origin ) == "Harvestable" then
			worldPosition = origin.worldPosition
		end
	end

	ringAngle = ringAngle or math.pi / 18

	if worldPosition then
		for i = 1, #lootList do
			local dir
			local up
			if type( origin ) == "Shape" then
				dir = sm.vec3.new( 1.0, 0.0, 0.0 )
				up = sm.vec3.new( 0, 1, 0 )
			else
				dir = sm.vec3.new( 0.0, 1.0, 0.0 )
				up = sm.vec3.new( 0, 0, 1 )
			end

			local firstCircle = 6
			local secondCircle = 13
			local thirdCircle = 26

			if i < 6 then
				local divisions = ( firstCircle - ( firstCircle - math.min( #lootList, firstCircle - 1 ) ) )
				dir = dir:rotate( i * 2 * math.pi / divisions, up )
				local right = dir:cross( up )
				dir = dir:rotate( math.pi / 2 - ringAngle, right )
			elseif i < 13 then
				local divisions = ( secondCircle - ( secondCircle - math.min( #lootList - firstCircle + 1, secondCircle - firstCircle ) ) )
				dir = dir:rotate( i * 2 * math.pi / divisions, up )
				local right = dir:cross( up )
				dir = dir:rotate( math.pi / 2 - 2 * ringAngle, right )
			elseif i < 26 then
				local dvisions = ( thirdCircle - ( thirdCircle - math.min( #lootList - secondCircle + 1, thirdCircle - secondCircle ) ) )
				dir = dir:rotate( i * 2 * math.pi / dvisions, up )
				local right = dir:cross( up )
				dir = dir:rotate( math.pi / 2 - 4 * ringAngle, right )
			else
				-- Out of predetermined room, place randomly
				dir = dir:rotate( math.random() * 2 * math.pi, up )
				local right = dir:cross( up )
				dir = dir:rotate( math.pi / 2 - ringAngle - math.random() * ( 3 * ringAngle ), right )
			end

			local loot = lootList[i]
			local params = { lootUid = loot.uuid, lootQuantity = loot.quantity or 1, epic = loot.epic }
			local vel = dir * (4+math.random()*2)
			local projectileUuid = loot.epic and projectile_epicloot or projectile_loot
			if type( origin ) == "Shape" then
				sm.projectile.shapeCustomProjectileAttack( params, projectileUuid, 0, sm.vec3.new( 0, 0, 0 ), vel, origin, 0 )
			elseif type( origin ) == "Player" or type( origin ) == "Unit" then
				sm.projectile.customProjectileAttack( params, projectileUuid, 0, worldPosition, vel, origin, worldPosition, worldPosition, 0 )
			elseif type( origin ) == "Harvestable" then
				sm.projectile.harvestableCustomProjectileAttack( params, projectileUuid, 0, worldPosition, vel, origin, 0 )
			end
		end
	end
end
