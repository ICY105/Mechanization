
execute if data storage mechanization:temp obj.input_item.components."minecraft:damage" run return 0
execute if data storage mechanization:temp obj.input_item.components."minecraft:max_damage" run return 0

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.copper if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.copper run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.iron if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.iron run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.gold if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.gold run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.diamond if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.diamond run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.emerald if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.emerald run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.experience if data storage mechanization:temp obj.fluid_item{id:"experience"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.experience run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.glowstone if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.glowstone run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.amethyst if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.amethyst run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.coal if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.coal run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.lapis if data storage mechanization:temp obj.fluid_item{id:"molten_lapis"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.lapis run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.netherite if data storage mechanization:temp obj.fluid_item{id:"molten_netherite"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.netherite run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.obsidian if data storage mechanization:temp obj.fluid_item{id:"molten_obsidian"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.obsidian run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.quartz if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.quartz run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.redstone if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.redstone run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.crystal_composite if data storage mechanization:temp obj.fluid_item{id:"molten_crystal_composite"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.crystal_composite run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data



execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.tin if data storage mechanization:temp obj.fluid_item{id:"molten_tin"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.tin run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.uranium if data storage mechanization:temp obj.fluid_item{id:"molten_uranium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.uranium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.titanium if data storage mechanization:temp obj.fluid_item{id:"molten_titanium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.titanium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.steel if data storage mechanization:temp obj.fluid_item{id:"molten_steel"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.steel run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.structural_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_structural_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.structural_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.conductive_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_conductive_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.conductive_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.titanium_steel if data storage mechanization:temp obj.fluid_item{id:"molten_titanium_steel"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.titanium_steel run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.reinforced_structural_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_reinforced_structural_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.reinforced_structural_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.super_conductive_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_super_conductive_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.super_conductive_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.plutonium if data storage mechanization:temp obj.fluid_item{id:"molten_plutonium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.plutonium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.ender_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_ender_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.ender_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..288 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.nether_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_nether_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.plate.nether_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
