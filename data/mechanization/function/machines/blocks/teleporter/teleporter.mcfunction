
# get nearby player
scoreboard players set #success mechanization.data 0
execute if score @s energy.storage matches 2000.. positioned ~ ~1 ~ align xyz store success score #success mechanization.data if entity @p[dx=0,dy=0,dz=0]

# cancel timer if no player
execute if score #success mechanization.data matches 0 if score @s mechanization.time matches 1.. run stopsound @a[distance=..16] * minecraft:block.portal.trigger
execute if score #success mechanization.data matches 0 run scoreboard players set @s mechanization.time 0
execute if score #success mechanization.data matches 0 run scoreboard players set @s mechanization.data 0

# run proper mode
item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422017}
execute if score #success mechanization.data matches 1.. run function mechanization:machines/blocks/teleporter/teleport

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t3
