
# simplunium ore
execute if score #upgrade mechanization.data matches 0 if score #output_count mechanization.data matches 0..63 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{simplunium_ore:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #upgrade mechanization.data matches 1 if score #output_count mechanization.data matches 0..62 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{simplunium_ore:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #upgrade mechanization.data matches 2 if score #output_count mechanization.data matches 0..61 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{simplunium_ore:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #upgrade mechanization.data matches 3 if score #output_count mechanization.data matches 0..62 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{simplunium_ore:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

# deepslate simplunium ore
execute if score #upgrade mechanization.data matches 0 if score #output_count mechanization.data matches 0..63 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{deepslate_simplunium_ore:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #upgrade mechanization.data matches 1 if score #output_count mechanization.data matches 0..62 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{deepslate_simplunium_ore:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #upgrade mechanization.data matches 2 if score #output_count mechanization.data matches 0..61 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{deepslate_simplunium_ore:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #upgrade mechanization.data matches 3 if score #output_count mechanization.data matches 0..62 if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{deepslate_simplunium_ore:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

# simplunium ingot
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{simplenergy:{simplunium_ingot:1b}}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
