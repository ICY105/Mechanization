
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute if entity @s[nbt={Rotation:[0.01f,0f]},scores={mech_power=160..}] run function mechanization:machines/machines/tree_feller/tree_feller_east
execute if entity @s[nbt={Rotation:[90f,0f]},scores={mech_power=160..}] run function mechanization:machines/machines/tree_feller/tree_feller_south
execute if entity @s[nbt={Rotation:[180f,0f]},scores={mech_power=160..}] run function mechanization:machines/machines/tree_feller/tree_feller_west
execute if entity @s[nbt={Rotation:[270f,0f]},scores={mech_power=160..}] run function mechanization:machines/machines/tree_feller/tree_feller_north

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute at @s unless block ~ ~ ~ barrier run kill @s
