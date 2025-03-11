
# exit early conditions
scoreboard players set #result mechanization.data 1
execute unless items block ~ ~ ~ container.10 minecraft:book unless items block ~ ~ ~ container.10 minecraft:enchanted_book store success score #result mechanization.data run function mechanization:machines/blocks/enchanting_station/enchant_item/m.check_target_item with storage mechanization:temp obj.enchantment
execute if score #result mechanization.data matches 0 run return fail

execute store result score #loop2 mechanization.data run data get storage mechanization:temp obj.enchantment.exclusive
execute if entity @s[tag=!mechanization.upgraded] if score #loop2 mechanization.data matches 1.. store success score #result mechanization.data run function mechanization:machines/blocks/enchanting_station/enchant_item/check_conflicting
execute if score #result mechanization.data matches 0 run return fail

# get cost
execute store result score #cost mechanization.data run data get storage mechanization:temp obj.enchantment.cost

scoreboard players operation #total_cost mechanization.data = #source_level mechanization.data
scoreboard players operation #total_cost mechanization.data *= #cost mechanization.data
scoreboard players operation #total_cost mechanization.data *= #cons.25 mechanization.data

execute if score @s fluid.storage.0 < #total_cost mechanization.data run return fail
scoreboard players operation @s fluid.storage.0 -= #total_cost mechanization.data

# add enchantments
scoreboard players operation #new_level mechanization.data = #source_level mechanization.data
execute if score #new_level mechanization.data = #target_level mechanization.data run scoreboard players add #new_level mechanization.data 1

function mechanization:machines/blocks/enchanting_station/enchant_item/m.set_enchantment_level with storage mechanization:temp obj.enchantment
function mechanization:machines/blocks/enchanting_station/enchant_item/m.remove_enchantment with storage mechanization:temp obj.enchantment

scoreboard players set #success mechanization.data 1
