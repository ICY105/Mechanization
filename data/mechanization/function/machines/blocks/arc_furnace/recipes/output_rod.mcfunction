
execute if data storage mechanization:temp obj.input_item.components."minecraft:damage" run return 0
execute if data storage mechanization:temp obj.input_item.components."minecraft:max_damage" run return 0

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.copper if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.copper run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_copper"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.copper run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.iron if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.iron run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_iron"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.iron run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.gold if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.gold run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_gold"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.gold run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.diamond if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.diamond run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_diamond"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.diamond run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.emerald if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.emerald run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_emerald"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.emerald run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.experience if data storage mechanization:temp obj.fluid_item{id:"experience"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.experience run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"experience"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.experience run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.glowstone if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.glowstone run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_glowstone"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.glowstone run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.amethyst if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.amethyst run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_amethyst"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.amethyst run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.coal if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.coal run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_coal"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.coal run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.lapis if data storage mechanization:temp obj.fluid_item{id:"molten_lapis"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.lapis run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_lapis"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.lapis run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.netherite if data storage mechanization:temp obj.fluid_item{id:"molten_netherite"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.netherite run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_netherite"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.netherite run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.obsidian if data storage mechanization:temp obj.fluid_item{id:"molten_obsidian"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.obsidian run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_obsidian"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.obsidian run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.quartz if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.quartz run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_quartz"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.quartz run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.redstone if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.redstone run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_redstone"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.redstone run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.crystal_composite if data storage mechanization:temp obj.fluid_item{id:"molten_crystal_composite"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.crystal_composite run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_crystal_composite"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.crystal_composite run scoreboard players add @s fluid.storage.0 144



execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.tin if data storage mechanization:temp obj.fluid_item{id:"molten_tin"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.tin run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_tin"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.tin run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.uranium if data storage mechanization:temp obj.fluid_item{id:"molten_uranium"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.uranium run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_uranium"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.uranium run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium if data storage mechanization:temp obj.fluid_item{id:"molten_titanium"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_titanium"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.steel if data storage mechanization:temp obj.fluid_item{id:"molten_steel"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.steel run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_steel"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.steel run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.structural_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_structural_alloy"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.structural_alloy run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_structural_alloy"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.structural_alloy run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.conductive_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_conductive_alloy"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.conductive_alloy run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_conductive_alloy"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.conductive_alloy run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium_steel if data storage mechanization:temp obj.fluid_item{id:"molten_titanium_steel"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium_steel run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_titanium_steel"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.titanium_steel run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.structural_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_structural_alloy"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.structural_alloy run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_structural_alloy"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.structural_alloy run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.conductive_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_conductive_alloy"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.conductive_alloy run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_conductive_alloy"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.conductive_alloy run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.plutonium if data storage mechanization:temp obj.fluid_item{id:"molten_plutonium"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.plutonium run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_plutonium"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.plutonium run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.ender_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_ender_alloy"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.ender_alloy run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_ender_alloy"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.ender_alloy run scoreboard players add @s fluid.storage.0 144

execute if score @s fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.nether_alloy if data storage mechanization:temp obj.fluid_item{id:"molten_nether_alloy"} run scoreboard players add @s fluid.storage.0 144
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.nether_alloy run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_nether_alloy"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gear.nether_alloy run scoreboard players add @s fluid.storage.0 144

