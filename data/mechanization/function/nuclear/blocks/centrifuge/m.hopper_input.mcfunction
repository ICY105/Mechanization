
$data modify block $(location) TransferCooldown set value 30
$execute unless items block $(location) container.* * run return fail

setblock -30000000 0 3216 minecraft:yellow_shulker_box replace

item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.0
item replace block -30000000 0 3201 container.1 from block ~ ~ ~ container.9
item replace block -30000000 0 3201 container.2 from block ~ ~ ~ container.18
item replace block -30000000 0 3201 container.3 with minecraft:air

scoreboard players set #success mechanization.data 0
$execute positioned $(location) if items block ~ ~ ~ container.0 * run function mechanization:nuclear/blocks/centrifuge/m.hopper_input_2 {slot: 0}
execute if score #success mechanization.data matches 1 run return run function mechanization:nuclear/blocks/centrifuge/hopper_input_3

scoreboard players set #success mechanization.data 0
$execute positioned $(location) if items block ~ ~ ~ container.1 * run function mechanization:nuclear/blocks/centrifuge/m.hopper_input_2 {slot: 1}
execute if score #success mechanization.data matches 1 run return run function mechanization:nuclear/blocks/centrifuge/hopper_input_3

scoreboard players set #success mechanization.data 0
$execute positioned $(location) if items block ~ ~ ~ container.2 * run function mechanization:nuclear/blocks/centrifuge/m.hopper_input_2 {slot: 2}
execute if score #success mechanization.data matches 1 run return run function mechanization:nuclear/blocks/centrifuge/hopper_input_3

scoreboard players set #success mechanization.data 0
$execute positioned $(location) if items block ~ ~ ~ container.3 * run function mechanization:nuclear/blocks/centrifuge/m.hopper_input_2 {slot: 3}
execute if score #success mechanization.data matches 1 run return run function mechanization:nuclear/blocks/centrifuge/hopper_input_3

scoreboard players set #success mechanization.data 0
$execute positioned $(location) if items block ~ ~ ~ container.4 * run function mechanization:nuclear/blocks/centrifuge/m.hopper_input_2 {slot: 4}
execute if score #success mechanization.data matches 1 run return run function mechanization:nuclear/blocks/centrifuge/hopper_input_3
