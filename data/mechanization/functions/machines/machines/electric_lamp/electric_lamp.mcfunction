
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

#main
function du:world/blocks/is_active

execute if score @s mech_power matches ..7 run scoreboard players set $world.out_0 du_data 0

execute if score $world.out_0 du_data matches 0 run function mechanization:machines/machines/electric_lamp/turn_off
execute if score $world.out_0 du_data matches 1..2 run function mechanization:machines/machines/electric_lamp/turn_on

execute if score $world.out_0 du_data matches 0 run data modify entity @s Item.tag.CustomModelData set value 6422032
execute if score $world.out_0 du_data matches 1..2 run data modify entity @s Item.tag.CustomModelData set value 6422952

execute if score $world.out_0 du_data matches 1..2 run scoreboard players remove @s mech_power 8

#store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
