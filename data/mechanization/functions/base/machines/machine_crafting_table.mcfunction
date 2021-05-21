
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine
execute unless block ~ ~ ~ minecraft:barrel run kill @e[type=item,distance=..2]

execute if score $base.timer_100 du_data matches 0 run data merge entity @s {Fire:32000s}

execute if score $base.timer_20 du_data matches 0 run data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].id set value "minecraft:structure_block"
execute if score $base.timer_20 du_data matches 0 run data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].tag set value {CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score $base.timer_20 du_data matches 0 run item replace block ~ ~ ~ container.0 with minecraft:structure_block{CustomModelData:6421201,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
