
# Simplunium Block
execute if score @s mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{simplunium_block:1b} if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{simplunium_block:1b} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_block mechanization.data

# Raw Simplunium Block
execute if score @s mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{raw_simplunium_block:1b} if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{raw_simplunium_block:1b} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_block mechanization.data

# Simplunium Ingot
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{simplunium_ingot:1b} if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{simplunium_ingot:1b} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

# Raw Simplunium
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{raw_simplunium:1b} if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{raw_simplunium:1b} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

# Simplunium Nugget
execute if score @s mechanization.fluid.0 matches 1..3984 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{simplunium_nugget:1b} if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_simplunium"} run scoreboard players set @s mechanization.time 3
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".simplenergy{simplunium_nugget:1b} run scoreboard players set @s mechanization.time 3
