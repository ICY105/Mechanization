
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 30
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 30
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 30
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 30
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 30

# ui
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 25

# function
execute if score @s energy.storage matches 1000.. \
    if items block ~ ~ ~ container.10 * unless items block ~ ~ ~ container.10 *[minecraft:custom_data~{smithed:{ignore:{functionality:1b}}}] \
    if items block ~ ~ ~ container.12 * unless items block ~ ~ ~ container.12 *[minecraft:custom_data~{smithed:{ignore:{functionality:1b}}}] \
    unless items block ~ ~ ~ container.14 * run function mechanization:machines/blocks/enchanting_station/enchant_item/add_enchant

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t3
