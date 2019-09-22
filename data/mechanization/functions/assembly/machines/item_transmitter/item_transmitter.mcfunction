
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#send item
execute if score @s mech_data matches 0 positioned ~01 ~ ~ if block ~ ~ ~ #mechanization:inv{Items:[{}]} run function mechanization:assembly/machines/item_transmitter/item_transmitter_send
execute if score @s mech_data matches 1 positioned ~ ~ ~-1 if block ~ ~ ~ #mechanization:inv{Items:[{}]} run function mechanization:assembly/machines/item_transmitter/item_transmitter_send
execute if score @s mech_data matches 2 positioned ~-1 ~ ~ if block ~ ~ ~ #mechanization:inv{Items:[{}]} run function mechanization:assembly/machines/item_transmitter/item_transmitter_send
execute if score @s mech_data matches 3 positioned ~ ~ ~01 if block ~ ~ ~ #mechanization:inv{Items:[{}]} run function mechanization:assembly/machines/item_transmitter/item_transmitter_send
execute if score @s mech_data matches 4 positioned ~ ~01 ~ if block ~ ~ ~ #mechanization:inv{Items:[{}]} run function mechanization:assembly/machines/item_transmitter/item_transmitter_send
execute if score @s mech_data matches 5 positioned ~ ~-1 ~ if block ~ ~ ~ #mechanization:inv{Items:[{}]} run function mechanization:assembly/machines/item_transmitter/item_transmitter_send

#cleanup
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute unless block ~ ~ ~ structure_void run loot spawn ~ ~ ~ loot mechanization:assembly/item_transmitter
execute unless block ~ ~ ~ structure_void run kill @s
