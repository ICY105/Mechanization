
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 30
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 30
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 30
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 30
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 30

# ui
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 25

# function
scoreboard players set #allowed mechanization.data 1
execute if score #allowed mechanization.data matches 1 if score @s[tag=!mechanization.upgraded.nether] energy.storage matches 1000.. if items block ~ ~ ~ container.10 * if items block ~ ~ ~ container.12 minecraft:enchanted_book unless items block ~ ~ ~ container.14 * run function mechanization:machines/blocks/enchanting_station/enchant_item/add_enchant
execute if score #allowed mechanization.data matches 1 if score @s[tag=mechanization.upgraded.nether] energy.storage matches 1000.. if items block ~ ~ ~ container.10 * if items block ~ ~ ~ container.12 minecraft:enchanted_book unless items block ~ ~ ~ container.14 * run function mechanization:machines/blocks/enchanting_station/enchant_item/add_overenchant
execute if score #allowed mechanization.data matches 1 if score @s[tag=mechanization.upgraded.ender] energy.storage matches 1000.. if items block ~ ~ ~ container.10 * unless items block ~ ~ ~ container.10 *[minecraft:enchantments={}] if items block ~ ~ ~ container.12 minecraft:book unless items block ~ ~ ~ container.14 * run function mechanization:machines/blocks/enchanting_station/enchant_item/disenchant

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t3
