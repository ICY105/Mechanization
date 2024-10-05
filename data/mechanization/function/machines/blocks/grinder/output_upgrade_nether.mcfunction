
# get initial output count
item replace block -30000000 0 3201 container.0 with minecraft:air 1

scoreboard players set #output_count mechanization.data 0
scoreboard players set #ingot mechanization.data 0

execute store result score #input_count mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].count
execute store result score #output_count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].count
execute if score #output_count mechanization.data matches 1.. unless function mechanization:machines/blocks/grinder/verify_input_nether run return fail

# ores
execute if items block ~ ~ ~ container.0 minecraft:coal_ore run item replace block -30000000 0 3201 container.0 with minecraft:coal 2
execute if items block ~ ~ ~ container.0 minecraft:iron_ore run item replace block -30000000 0 3201 container.0 with minecraft:iron_ingot 2
execute if items block ~ ~ ~ container.0 minecraft:copper_ore run item replace block -30000000 0 3201 container.0 with minecraft:copper_ingot 6
execute if items block ~ ~ ~ container.0 minecraft:gold_ore run item replace block -30000000 0 3201 container.0 with minecraft:gold_ingot 2
execute if items block ~ ~ ~ container.0 minecraft:diamond_ore run item replace block -30000000 0 3201 container.0 with minecraft:diamond 2
execute if items block ~ ~ ~ container.0 minecraft:emerald_ore run item replace block -30000000 0 3201 container.0 with minecraft:emerald 2
execute if items block ~ ~ ~ container.0 minecraft:redstone_ore run item replace block -30000000 0 3201 container.0 with minecraft:redstone 6
execute if items block ~ ~ ~ container.0 minecraft:lapis_ore run item replace block -30000000 0 3201 container.0 with minecraft:lapis_lazuli 6

execute if items block ~ ~ ~ container.0 minecraft:deepslate_coal_ore run item replace block -30000000 0 3201 container.0 with minecraft:coal 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_iron_ore run item replace block -30000000 0 3201 container.0 with minecraft:iron_ingot 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_copper_ore run item replace block -30000000 0 3201 container.0 with minecraft:copper_ingot 6
execute if items block ~ ~ ~ container.0 minecraft:deepslate_gold_ore run item replace block -30000000 0 3201 container.0 with minecraft:gold_ingot 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_diamond_ore run item replace block -30000000 0 3201 container.0 with minecraft:diamond 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_emerald_ore run item replace block -30000000 0 3201 container.0 with minecraft:emerald 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_redstone_ore run item replace block -30000000 0 3201 container.0 with minecraft:redstone 6
execute if items block ~ ~ ~ container.0 minecraft:deepslate_lapis_ore run item replace block -30000000 0 3201 container.0 with minecraft:lapis_lazuli 9

execute if items block ~ ~ ~ container.0 minecraft:nether_quartz_ore run item replace block -30000000 0 3201 container.0 with minecraft:quartz 2
execute if items block ~ ~ ~ container.0 minecraft:nether_gold_ore run item replace block -30000000 0 3201 container.0 with minecraft:gold_ingot 2

execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{tin:1b}}}}] run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/tin_ingot
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{titanium:1b}}}}] run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/titanium_ingot
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{uranium:1b}}}}] run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/uranium_ingot

# logs
execute if items block ~ ~ ~ container.0 #minecraft:logs run item replace block -30000000 0 3201 container.0 with minecraft:charcoal 2

# extra
execute if items block ~ ~ ~ container.0 minecraft:cobblestone run item replace block -30000000 0 3201 container.0 with minecraft:glass 1
execute if items block ~ ~ ~ container.0 minecraft:stone run item replace block -30000000 0 3201 container.0 with minecraft:flint 1
execute if items block ~ ~ ~ container.0 minecraft:netherrack run item replace block -30000000 0 3201 container.0 with minecraft:glass 1
execute if items block ~ ~ ~ container.0 minecraft:gravel run item replace block -30000000 0 3201 container.0 with minecraft:flint 1
execute if items block ~ ~ ~ container.0 minecraft:blaze_rod run item replace block -30000000 0 3201 container.0 with minecraft:blaze_powder 3
execute if items block ~ ~ ~ container.0 minecraft:bone run item replace block -30000000 0 3201 container.0 with minecraft:bone_meal 4

# custom
scoreboard players set #upgrade mechanization.data 0
function #mechanization:machines/grinder_output

# add to output
item replace block ~ ~ ~ container.2 from block -30000000 0 3201 container.0
execute store result score #recipe_count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].count
scoreboard players operation #output_count mechanization.data += #recipe_count mechanization.data
item modify block ~ ~ ~ container.2 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#output_count"},"score":"mechanization.data"}}

item modify block ~ ~ ~ container.0 mechanization:decrement_count
execute if score #ingot mechanization.data matches 1 run item modify block ~ ~ ~ container.0 mechanization:decrement_count
