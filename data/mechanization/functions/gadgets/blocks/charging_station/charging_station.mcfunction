

# configure input slots
execute if data entity @s ArmorItems[].id run function mechanization:gadgets/blocks/charging_station/move_armor 
execute if data entity @s HandItems[0].Count run data merge entity @s {DisabledSlots:4136992}
execute unless data entity @s HandItems[0].Count run data merge entity @s {DisabledSlots:2105376}

# get data
data modify storage energy:temp list set value []
data modify storage energy:temp list append from entity @s HandItems[0]
execute store result score #energy mechanization.data run data get entity @s HandItems[0].tag.energy.storage
execute store result score #max_energy mechanization.data run data get entity @s HandItems[0].tag.energy.max_storage

# add energy
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #gadgets.cf.charge_speed mechanization.data if score #energy mechanization.data < #max_energy mechanization.data run scoreboard players operation #energy mechanization.data += #gadgets.cf.charge_speed mechanization.data
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #gadgets.cf.charge_speed mechanization.data if score #energy mechanization.data < #max_energy mechanization.data run scoreboard players operation @s energy.storage -= #gadgets.cf.charge_speed mechanization.data

execute if score #active mechanization.data matches 1 if score #max_energy mechanization.data matches 1.. store result storage energy:temp list[0].tag.energy.storage int 1 run scoreboard players get #energy mechanization.data
execute if score #active mechanization.data matches 1 if score #max_energy mechanization.data matches 1.. run function #energy:v1/update_energy_item
execute if score #active mechanization.data matches 1 if score #max_energy mechanization.data matches 1.. run data modify entity @s HandItems[0] set from storage energy:temp list[0]

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run kill @s
