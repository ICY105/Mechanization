
### Main

#get nearby player
scoreboard players set #success mechanization.data 0
execute positioned ~ ~1 ~ align xyz store success score #success mechanization.data if entity @p[dx=0,dy=0,dz=0]

#cancel timer if no player
execute if score #success mechanization.data matches 0 if score @s mechanization.time matches 1.. run stopsound @a[distance=..16] * mechanization:machines.teleporter_charging
execute if score #success mechanization.data matches 0 run scoreboard players set @s mechanization.time 0
execute if score #success mechanization.data matches 0 run scoreboard players set @s mechanization.data 0

#run proper mode
execute if score #success mechanization.data matches 1.. if score @s energy.storage matches ..2000 entity run function mechanization:machines/machines/teleporter/teleport

#cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t3
