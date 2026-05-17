
execute if data storage mechanization:temp obj.input_item.components."minecraft:damage" run return 0
execute if data storage mechanization:temp obj.input_item.components."minecraft:max_damage" run return 0

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.copper if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.copper run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.iron if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.iron run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.gold if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.gold run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.diamond if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.diamond run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.emerald if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.emerald run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.experience if data storage mechanization:temp obj.fluid_item{id:"experience"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.experience run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.glowstone if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.glowstone run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.amethyst if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.amethyst run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.coal if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.coal run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.lapis if data storage mechanization:temp obj.fluid_item{id:"molten_lapis"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.lapis run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.netherite if data storage mechanization:temp obj.fluid_item{id:"molten_netherite"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.netherite run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.obsidian if data storage mechanization:temp obj.fluid_item{id:"molten_obsidian"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.obsidian run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.quartz if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.quartz run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.redstone if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.redstone run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.crystal_composite if data storage mechanization:temp obj.fluid_item{id:"molten_crystal_composite"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.crystal_composite run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data



execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.tin if data storage mechanization:temp obj.fluid_item{id:"molten_tin"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.tin run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.uranium if data storage mechanization:temp obj.fluid_item{id:"molten_uranium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.uranium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.titanium if data storage mechanization:temp obj.fluid_item{id:"molten_titanium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.titanium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.steel if data storage mechanization:temp obj.fluid_item{id:"molten_steel"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.steel run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.structural_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_structural_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.structural_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.conductive_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_conductive_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.conductive_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.titanium_steel if data storage mechanization:temp obj.fluid_item{id:"molten_titanium_steel"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.titanium_steel run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.reinforced_structural_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_reinforced_structural_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.reinforced_structural_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.super_conductive_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_super_conductive_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.super_conductive_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.plutonium if data storage mechanization:temp obj.fluid_item{id:"molten_plutonium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.plutonium run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.ender_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_ender_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.ender_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

execute if score @s fluid.storage.0 matches 1..144 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.nether_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_nether_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.rod.nether_alloy run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
