
#load scoreboard values
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
tag @s remove mech_active

execute if entity @s[scores={mech_power=320..},nbt={HandItems:[{tag:{OreDict:["cellUranium"]}},{}]}] run function mechanization:nuclear/machines/centrifuge/uranium
execute if entity @s[scores={mech_power=320..},nbt={HandItems:[{tag:{OreDict:["cellPlutonium"]}},{}]}] run function mechanization:nuclear/machines/centrifuge/plutonium
execute if entity @s[scores={mech_power=320..},nbt={HandItems:[{tag:{OreDict:["cellSpentFuel"]}},{}]}] run function mechanization:nuclear/machines/centrifuge/spent_fuel

execute if entity @s[tag=mech_active] run scoreboard players remove @s mech_power 320

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute if score $base.cf.backup mech_data matches 1 unless block ~ ~ ~ minecraft:barrier positioned ~ ~0.4 ~ run kill @e[tag=mech_centrifuge_model,distance=..0.25]
execute if score $base.cf.backup mech_data matches 1 unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
