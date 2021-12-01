
#load scoreboard values
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

#main
execute if entity @s[nbt={ItemRotation:0b},scores={mech_power=160..}] run function mechanization:machines/machines/tree_feller/tree_feller_east
execute if entity @s[nbt={ItemRotation:6b},scores={mech_power=160..}] run function mechanization:machines/machines/tree_feller/tree_feller_south
execute if entity @s[nbt={ItemRotation:4b},scores={mech_power=160..}] run function mechanization:machines/machines/tree_feller/tree_feller_west
execute if entity @s[nbt={ItemRotation:2b},scores={mech_power=160..}] run function mechanization:machines/machines/tree_feller/tree_feller_north

#store scoreboard values
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:barrier positioned ~ ~-1 ~ run kill @e[tag=mech_tree_feller_model,distance=..0.75]
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t1
