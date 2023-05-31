
# Main
execute if entity @s[tag=!mechanization.upgraded] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mechanization.data 10
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mechanization.data 20
execute if entity @s[tag=mechanization.upgraded.ender] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mechanization.data 30
execute if entity @s[tag=mechanization.upgraded.nether] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[powered=true] unless entity @e[type=trident,distance=..2] run scoreboard players set @s mechanization.data 30

execute if score @s mechanization.data matches 1.. run scoreboard players remove @s mechanization.data 1
execute if score @s mechanization.data matches 1.. run scoreboard players set @s energy.storage 2000000000
execute if score @s mechanization.data matches 0 run scoreboard players set @s energy.storage 0

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t3
