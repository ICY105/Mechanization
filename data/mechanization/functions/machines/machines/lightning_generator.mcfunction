
## load scoreboard values
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

### Main
execute if entity @s[tag=!mech_upgraded] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mech_data 10
execute if entity @s[tag=mech_upgraded,tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mech_data 20
execute if entity @s[tag=mech_upgrade_ender] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mech_data 30
execute if entity @s[tag=mech_upgrade_nether] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mech_data 30

execute if score @s mech_data matches 1.. run scoreboard players remove @s mech_data 1
execute if score @s mech_data matches 1.. run scoreboard players set @s mech_power 2000000000
execute if score @s mech_data matches 0 run scoreboard players set @s mech_power 0

## store scoreboard values
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

## cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t3
