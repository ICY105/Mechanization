
# get data
data modify storage energy:temp list set value []
execute on passengers run data modify storage energy:temp list append from entity @s item
execute store result score #energy mechanization.data run data get storage energy:temp list[0].components."minecraft:custom_data".energy.storage
execute store result score #max_energy mechanization.data run data get storage energy:temp list[0].components."minecraft:custom_data".energy.max_storage

# add energy
function mechanization:base/utils/redstone_active
execute if score @s energy.storage < #gadgets.cf.charge_speed mechanization.data run scoreboard players set #active mechanization.data 0
execute if score #energy mechanization.data >= #max_energy mechanization.data run scoreboard players set #active mechanization.data 0

execute if score #active mechanization.data matches 1 run scoreboard players operation #energy mechanization.data += #gadgets.cf.charge_speed mechanization.data
execute if score #active mechanization.data matches 1 run scoreboard players operation @s energy.storage -= #gadgets.cf.charge_speed mechanization.data

execute if score #active mechanization.data matches 1 if score #max_energy mechanization.data matches 1.. store result storage energy:temp list[0].components."minecraft:custom_data".energy.storage int 1 run scoreboard players get #energy mechanization.data
execute if score #active mechanization.data matches 1 if score #max_energy mechanization.data matches 1.. run function #energy:v1/update_energy_item
execute if score #active mechanization.data matches 1 if score #max_energy mechanization.data matches 1.. on passengers run data modify entity @s item set from storage energy:temp list[0]

# cleanup
execute unless block ~ ~ ~ minecraft:barrier on passengers run kill @s
execute unless block ~ ~ ~ minecraft:barrier align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.charging_station,distance=..0.1,sort=nearest,limit=1]
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t2
