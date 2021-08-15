

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

#main
execute if score @s mech_power matches 144.. if data block ~ ~ ~ Items[0] run data modify storage du:temp list set from block ~ ~ ~ Items
execute if score @s[nbt={ItemRotation:4b}] mech_power matches 144.. if data block ~ ~ ~ Items[0] rotated 180 0 run function mechanization:assembly/machines/compressor/check_recipes
execute if score @s[nbt={ItemRotation:2b}] mech_power matches 144.. if data block ~ ~ ~ Items[0] rotated -90 0 run function mechanization:assembly/machines/compressor/check_recipes
execute if score @s[nbt={ItemRotation:0b}] mech_power matches 144.. if data block ~ ~ ~ Items[0] rotated 0 0 run function mechanization:assembly/machines/compressor/check_recipes
execute if score @s[nbt={ItemRotation:6b}] mech_power matches 144.. if data block ~ ~ ~ Items[0] rotated 90 0 run function mechanization:assembly/machines/compressor/check_recipes

#store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t2
