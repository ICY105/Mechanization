
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#mark as active
tag @s remove mech_active
execute if score @s mech_data matches 0 positioned ~01 ~ ~ run function mechanization:assembly/machines/item_receiver_2
execute if score @s mech_data matches 1 positioned ~ ~ ~-1 run function mechanization:assembly/machines/item_receiver_2
execute if score @s mech_data matches 2 positioned ~-1 ~ ~ run function mechanization:assembly/machines/item_receiver_2
execute if score @s mech_data matches 3 positioned ~ ~ ~01 run function mechanization:assembly/machines/item_receiver_2
execute if score @s mech_data matches 4 positioned ~ ~-1 ~ run function mechanization:assembly/machines/item_receiver_2
execute if score @s mech_data matches 5 positioned ~ ~01 ~ run function mechanization:assembly/machines/item_receiver_2

#cleanup
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute unless block ~ ~ ~ structure_void run loot spawn ~ ~ ~ loot mechanization:assembly/item_receiver
execute unless block ~ ~ ~ structure_void run kill @s
