
# main
function mechanization:base/utils/redstone_active
execute if score @s energy.storage < #machines.cf.lamp.power mechanization.data run scoreboard players set #active mechanization.data 0

execute if score #active mechanization.data matches 0 run function mechanization:machines/blocks/electric_lamp/turn_off
execute if score #active mechanization.data matches 1 run function mechanization:machines/blocks/electric_lamp/turn_on

execute if score #active mechanization.data matches 0 run data modify entity @s item.tag.CustomModelData set value 6422032
execute if score #active mechanization.data matches 1 run data modify entity @s item.tag.CustomModelData set value 6422952

execute if score #active mechanization.data matches 1 run scoreboard players operation @s energy.storage -= #machines.cf.lamp.power mechanization.data

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:machines/blocks/electric_lamp/turn_off
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t2
