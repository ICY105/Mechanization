
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run function mechanization:machines/blocks/casting_basin/m.hopper_input {location:"~ ~1 ~"}
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run function mechanization:machines/blocks/casting_basin/m.hopper_input {location:"~1 ~ ~"}
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run function mechanization:machines/blocks/casting_basin/m.hopper_input {location:"~-1 ~ ~"}
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run function mechanization:machines/blocks/casting_basin/m.hopper_input {location:"~ ~ ~1"}
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run function mechanization:machines/blocks/casting_basin/m.hopper_input {location:"~ ~ ~-1"}

# process recipes
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0

execute if score @s mechanization.time matches 1 if score @s fluid.storage.0 matches 1.. if score @s mechanization.data matches 1.. run function mechanization:machines/blocks/casting_basin/recipes/output
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if score @s fluid.storage.0 matches 1.. if score @s mechanization.data matches 1.. if score @s energy.storage > #machines.cf.casting_basin.power mechanization.data run function mechanization:machines/blocks/casting_basin/recipes/input

# ui
execute if score @s mechanization.time matches 0 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422028}
execute if score @s mechanization.time matches 1.. run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422950}

# update
execute if score @s mechanization.time matches 1.. if score @s energy.storage < #machines.cf.casting_basin.power mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. if score @s energy.storage >= #machines.cf.casting_basin.power mechanization.data run scoreboard players remove @s energy.storage 15
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
