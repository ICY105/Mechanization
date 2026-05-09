
execute if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air

execute if score @s mechanization.time matches 1.. run data remove block -30000000 0 3201 Items
execute if score @s mechanization.time matches 1.. run data modify block -30000000 0 3201 Items append from entity @s item.components."minecraft:bundle_contents"[0]
execute if score @s mechanization.time matches 1.. run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @n[type=minecraft:interaction,tag=mechanization.block_hitbox.reactor_core,distance=..0.1]
function mechanization:base/utils/break_block/break_machine_t2
