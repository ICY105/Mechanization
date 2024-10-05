
# get output count
execute store result score #output_count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].count
execute store result score #input_count mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].count

# ores
execute if score #output_count mechanization.data matches 0..61 if items block ~ ~ ~ container.0 #mechanization:basic_ores run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..56 if items block ~ ~ ~ container.0 minecraft:redstone_ore run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..52 if items block ~ ~ ~ container.0 minecraft:lapis_ore run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..56 if items block ~ ~ ~ container.0 minecraft:deepslate_redstone_ore run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..52 if items block ~ ~ ~ container.0 minecraft:deepslate_lapis_ore run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..56 if items block ~ ~ ~ container.0 minecraft:copper_ore run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..56 if items block ~ ~ ~ container.0 minecraft:deepslate_copper_ore run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

execute if score #output_count mechanization.data matches 0..61 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{tin:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..61 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{titanium:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..61 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{uranium:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

# ingots
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 minecraft:iron_ingot run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 minecraft:gold_ingot run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 minecraft:copper_ingot run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{tin:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{titanium:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{uranium:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{steel:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{structural_alloy:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{conductive_alloy:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{titanium_steel:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{reinforced_structural_alloy:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{super_conductive_alloy:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{nether_alloy:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{ender_alloy:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{plutonium:1b}}}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

# logs
execute if score #output_count mechanization.data matches 0..56 if items block ~ ~ ~ container.0 #minecraft:logs run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data

# extra
execute if score #output_count mechanization.data matches 0..62 if items block ~ ~ ~ container.0 minecraft:cobblestone run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..63 if items block ~ ~ ~ container.0 minecraft:stone run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..63 if items block ~ ~ ~ container.0 minecraft:netherrack run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..62 if items block ~ ~ ~ container.0 minecraft:gravel run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..60 if items block ~ ~ ~ container.0 minecraft:blaze_rod run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..58 if items block ~ ~ ~ container.0 minecraft:bone run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data

# custom
scoreboard players set #upgrade mechanization.data 2
function #mechanization:machines/grinder_input

#calculate needed power
scoreboard players operation #output_count mechanization.data = #machines.cf.grinder.power mechanization.data
scoreboard players operation #output_count mechanization.data *= @s mechanization.time
execute if score @s energy.storage < #output_count mechanization.data run scoreboard players set @s mechanization.time 0
