
execute if block ~ ~2 ~ minecraft:wheat run function mechanization:machines/machines/growth_accelerator/wheat
execute if block ~ ~2 ~ minecraft:potatoes run function mechanization:machines/machines/growth_accelerator/potatoes
execute if block ~ ~2 ~ minecraft:carrots run function mechanization:machines/machines/growth_accelerator/carrots

execute if block ~ ~2 ~ minecraft:sugar_cane if block ~ ~3 ~ minecraft:air run setblock ~ ~3 ~ minecraft:sugar_cane
execute if block ~ ~2 ~ minecraft:cactus if block ~ ~3 ~ minecraft:air run setblock ~ ~3 ~ minecraft:cactus
