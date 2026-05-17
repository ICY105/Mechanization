
execute if data storage mechanization:temp obj.input_item.components."minecraft:damage" run return 0
execute if data storage mechanization:temp obj.input_item.components."minecraft:max_damage" run return 0

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.copper if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.copper run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.iron if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.iron run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.gold if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.gold run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.diamond if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.diamond run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.emerald if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.emerald run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.experience if data storage mechanization:temp obj.fluid_item{id:"experience"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.experience run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.glowstone if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.glowstone run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.amethyst if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.amethyst run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.coal if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.coal run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.lapis if data storage mechanization:temp obj.fluid_item{id:"molten_lapis"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.lapis run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.netherite if data storage mechanization:temp obj.fluid_item{id:"molten_netherite"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.netherite run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.obsidian if data storage mechanization:temp obj.fluid_item{id:"molten_obsidian"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.obsidian run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.quartz if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.quartz run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.redstone if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.redstone run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.crystal_composite if data storage mechanization:temp obj.fluid_item{id:"molten_crystal_composite"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.crystal_composite run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data



execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.tin if data storage mechanization:temp obj.fluid_item{id:"molten_tin"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.tin run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.uranium if data storage mechanization:temp obj.fluid_item{id:"molten_uranium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.uranium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium if data storage mechanization:temp obj.fluid_item{id:"molten_titanium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.steel if data storage mechanization:temp obj.fluid_item{id:"molten_steel"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.steel run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.structural_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_structural_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.structural_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.conductive_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_conductive_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.conductive_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium_steel if data storage mechanization:temp obj.fluid_item{id:"molten_titanium_steel"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium_steel run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.reinforced_structural_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_reinforced_structural_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.reinforced_structural_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.super_conductive_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_super_conductive_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.super_conductive_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.plutonium if data storage mechanization:temp obj.fluid_item{id:"molten_plutonium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.plutonium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.ender_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_ender_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.ender_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..432 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.nether_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_nether_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.nether_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
