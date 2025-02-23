
# hopper input
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:hopper[facing=down] run data modify block ~ ~ ~ TransferCooldown set value 30
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:hopper[facing=west] run data modify block ~ ~ ~ TransferCooldown set value 30
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:hopper[facing=east] run data modify block ~ ~ ~ TransferCooldown set value 30
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:hopper[facing=north] run data modify block ~ ~ ~ TransferCooldown set value 30
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:hopper[facing=south] run data modify block ~ ~ ~ TransferCooldown set value 30
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper run data modify block ~ ~ ~ TransferCooldown set value 30

# cleanup
execute unless block ~ ~ ~ minecraft:barrel on passengers run kill @s 
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
