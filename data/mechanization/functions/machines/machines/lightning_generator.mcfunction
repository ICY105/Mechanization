
## load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

### Main
execute if entity @s[tag=!mech_upgraded] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mechanization.data 10
execute if entity @s[tag=mech_upgraded,tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mechanization.data 20
execute if entity @s[tag=mech_upgrade_ender] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mechanization.data 30
execute if entity @s[tag=mech_upgrade_nether] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mechanization.data 30

execute if score @s mechanization.data matches 1.. run scoreboard players remove @s mechanization.data 1
execute if score @s mechanization.data matches 1.. run scoreboard players set @s mechanization.stored_energy 2000000000
execute if score @s mechanization.data matches 0 run scoreboard players set @s mechanization.stored_energy 0

## store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

## cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t3
