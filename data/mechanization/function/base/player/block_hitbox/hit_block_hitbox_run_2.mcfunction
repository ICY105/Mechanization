
scoreboard players set #custom mechanization.data 0
function #mechanization:custom_hitbox_break

execute if score #success mechanization.data matches 0 if score #tier mechanization.data matches 0 run function mechanization:base/utils/break_block/break_machine
execute if score #success mechanization.data matches 0 if score #tier mechanization.data matches 1 run function mechanization:base/utils/break_block/break_machine_t1
execute if score #success mechanization.data matches 0 if score #tier mechanization.data matches 2 run function mechanization:base/utils/break_block/break_machine_t2
execute if score #success mechanization.data matches 0 if score #tier mechanization.data matches 3 run function mechanization:base/utils/break_block/break_machine_t3

kill @s
