
$data modify block $(location) TransferCooldown set value 30
$execute unless items block $(location) container.* * run return fail

setblock -30000000 0 3216 minecraft:yellow_shulker_box replace

item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.1
item replace block -30000000 0 3201 container.1 with minecraft:air

$execute positioned $(location) if items block ~ ~ ~ container.0 * run function mechanization:nuclear/blocks/alchemy_chamber/hopper/m.hopper_input_2 {slot: 0}
execute unless items block -30000000 0 3201 container.1 * run return run function mechanization:nuclear/blocks/alchemy_chamber/hopper/hopper_input_3
item replace block -30000000 0 3201 container.3 with minecraft:air
