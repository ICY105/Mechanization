# mech_x = temp
# mech_y = rate

#load scoreboard values
execute unless score @s mech_x matches -2147483648.. store result score @s mech_x run data get entity @s ArmorItems[3].tag.mech_x
execute unless score @s mech_y matches -2147483648.. store result score @s mech_y run data get entity @s ArmorItems[3].tag.mech_y

#main
tag @s remove mech_active
tag @s remove mech_uranium
tag @s remove mech_plutonium

execute if entity @s[nbt={HandItems:[{tag:{OreDict:["cellUranium"]}},{}]}] run tag @s add mech_uranium
execute if entity @s[nbt={HandItems:[{tag:{OreDict:["cellPlutonium"]}},{}]}] run tag @s add mech_plutonium
tag @s[tag=mech_uranium] add mech_active
tag @s[tag=mech_plutonium] add mech_active

execute if entity @s[tag=!mech_active] store success entity @s ArmorItems[3].tag.Damage short 74 if entity @s
execute if entity @s[tag=mech_uranium] store success entity @s ArmorItems[3].tag.Damage short 75 if entity @s
execute if entity @s[tag=mech_plutonium] store success entity @s ArmorItems[3].tag.Damage short 76 if entity @s

execute if entity @s[tag=mech_active] run function mechanization:nuclear/machines/fission_reactor/heat_process

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_x int 1 run scoreboard players get @s mech_x
execute store result entity @s ArmorItems[3].tag.mech_y int 1 run scoreboard players get @s mech_y

#cleanup
execute unless block ~ ~ ~ barrier run kill @s
