
# simplunium ingot
execute if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data
execute if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} if data storage mechanization:temp obj.output_item.tag.simplenergy{simplunium_ingot:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data

# simplunium block
execute if score @s mechanization.data matches 2 if score @s mechanization.fluid.0 matches 1296.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_block mechanization.data
execute if score @s mechanization.data matches 2 if score @s mechanization.fluid.0 matches 1296.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} if data storage mechanization:temp obj.output_item.tag.simplenergy{simplunium_block:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_block mechanization.data

# simplunium nugget
execute if score @s mechanization.data matches 3 if score @s mechanization.fluid.0 matches 16.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data
execute if score @s mechanization.data matches 3 if score @s mechanization.fluid.0 matches 16.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} if data storage mechanization:temp obj.output_item.tag.simplenergy{simplunium_nugget:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_ingot mechanization.data

# simplunium rod
scoreboard players set #cost mechanization.data 432
execute if score #upgraded mechanization.data matches 1.. run scoreboard players set #cost mechanization.data 360
execute if score #upgraded mechanization.data matches 2 run scoreboard players set #cost mechanization.data 288

execute if score @s mechanization.data matches 5 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_nugget mechanization.data
execute if score @s mechanization.data matches 5 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.rod{simplunium:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_nugget mechanization.data

# simplunium plate
scoreboard players add #cost mechanization.data 144
execute if score @s mechanization.data matches 6 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_plate mechanization.data
execute if score @s mechanization.data matches 6 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.plate{simplunium:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_plate mechanization.data

# simplunium gear
scoreboard players add #cost mechanization.data 144
execute if score @s mechanization.data matches 7 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_gear mechanization.data
execute if score @s mechanization.data matches 7 if score @s mechanization.fluid.0 >= #cost mechanization.data if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_simplunium"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.gear{simplunium:1b} run scoreboard players operation @s mechanization.time = #machines.cf.casting_basin.speed_gear mechanization.data
