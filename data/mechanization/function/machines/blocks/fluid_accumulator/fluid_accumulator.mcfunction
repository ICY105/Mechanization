
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 30
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 30
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 30
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 30
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 30

# process recipes
function mechanization:base/utils/redstone_active

execute if score #active mechanization.data matches 1 if score @s fluid.storage.0 matches 1.. run function mechanization:machines/blocks/fluid_accumulator/collect_fluid_checked
execute if score #active mechanization.data matches 1 unless score @s fluid.storage.0 matches 1.. run function mechanization:machines/blocks/fluid_accumulator/collect_fluid_unchecked

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
