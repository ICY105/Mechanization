
# arid ingot
execute if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_arid_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data
execute if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_arid_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".flor_dat{alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data

# arid rod
scoreboard players set #cost mechanization.data 432
execute if score #upgraded mechanization.data matches 1.. run scoreboard players set #cost mechanization.data 360
execute if score #upgraded mechanization.data matches 2 run scoreboard players set #cost mechanization.data 288

execute if score @s mechanization.data matches 5 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_arid_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_nugget mechanization.data
execute if score @s mechanization.data matches 5 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_arid_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.rod{arid_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_rod mechanization.data

# arid plate
scoreboard players add #cost mechanization.data 144
execute if score @s mechanization.data matches 6 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_arid_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_plate mechanization.data
execute if score @s mechanization.data matches 6 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_arid_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.plate{arid_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_plate mechanization.data

# arid gear
scoreboard players add #cost mechanization.data 144
execute if score @s mechanization.data matches 7 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_arid_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_gear mechanization.data
execute if score @s mechanization.data matches 7 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_arid_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.gear{arid_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_gear mechanization.data


# aqueous ingot
execute if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_aqueous_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data
execute if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_aqueous_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".flor_dat{alloy:2b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data

# aqueous rod
scoreboard players set #cost mechanization.data 432
execute if score #upgraded mechanization.data matches 1.. run scoreboard players set #cost mechanization.data 360
execute if score #upgraded mechanization.data matches 2 run scoreboard players set #cost mechanization.data 288

execute if score @s mechanization.data matches 5 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_aqueous_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_nugget mechanization.data
execute if score @s mechanization.data matches 5 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_aqueous_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.rod{aqueous_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_rod mechanization.data

# aqueous plate
scoreboard players add #cost mechanization.data 144
execute if score @s mechanization.data matches 6 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_aqueous_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_plate mechanization.data
execute if score @s mechanization.data matches 6 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_aqueous_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.plate{aqueous_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_plate mechanization.data

# aqueous gear
scoreboard players add #cost mechanization.data 144
execute if score @s mechanization.data matches 7 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_aqueous_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_gear mechanization.data
execute if score @s mechanization.data matches 7 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_aqueous_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.gear{aqueous_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_gear mechanization.data


# verdant ingot
execute if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_verdant_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data
execute if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_verdant_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".flor_dat{alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data

# verdant rod
scoreboard players set #cost mechanization.data 432
execute if score #upgraded mechanization.data matches 1.. run scoreboard players set #cost mechanization.data 360
execute if score #upgraded mechanization.data matches 2 run scoreboard players set #cost mechanization.data 288

execute if score @s mechanization.data matches 5 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_verdant_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_nugget mechanization.data
execute if score @s mechanization.data matches 5 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_verdant_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.rod{verdant_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_rod mechanization.data

# verdant plate
scoreboard players add #cost mechanization.data 144
execute if score @s mechanization.data matches 6 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_verdant_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_plate mechanization.data
execute if score @s mechanization.data matches 6 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_verdant_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.plate{verdant_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_plate mechanization.data

# verdant gear
scoreboard players add #cost mechanization.data 144
execute if score @s mechanization.data matches 7 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_verdant_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_gear mechanization.data
execute if score @s mechanization.data matches 7 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.components."minecraft:custom_data".mechanization.liquid{id:"molten_verdant_alloy"} if data storage mechanization:temp obj.output_item.components."minecraft:custom_data".smithed.dict.gear{verdant_alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_gear mechanization.data
