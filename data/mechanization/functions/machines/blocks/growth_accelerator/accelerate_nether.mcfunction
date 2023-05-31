
execute if block ~ ~2 ~ minecraft:wheat store success score #success mechanization.data run setblock ~ ~2 ~ minecraft:wheat[age=7]
execute if block ~ ~2 ~ minecraft:potatoes store success score #success mechanization.data run setblock ~ ~2 ~ minecraft:potatoes[age=7]
execute if block ~ ~2 ~ minecraft:carrots store success score #success mechanization.data run setblock ~ ~2 ~ minecraft:carrots[age=7]

execute if block ~ ~2 ~ minecraft:pumpkin_stem run function mechanization:machines/machines/growth_accelerator/pumpkin_stem
execute if block ~ ~2 ~ minecraft:melon_stem run function mechanization:machines/machines/growth_accelerator/melon_stem
function mechanization:machines/machines/growth_accelerator/trees

execute if block ~ ~2 ~ minecraft:beetroots store success score #success mechanization.data run setblock ~ ~2 ~ minecraft:beetroots[age=3]
execute if block ~ ~2 ~ minecraft:nether_wart store success score #success mechanization.data run setblock ~ ~2 ~ minecraft:nether_wart[age=3]
execute if block ~ ~2 ~ minecraft:cocoa store success score #success mechanization.data run setblock ~ ~2 ~ minecraft:cocoa[age=2]

execute if block ~ ~2 ~ minecraft:sugar_cane if block ~ ~3 ~ minecraft:air store success score #success mechanization.data run setblock ~ ~3 ~ minecraft:sugar_cane
execute if block ~ ~2 ~ minecraft:sugar_cane if block ~ ~4 ~ minecraft:air store success score #success mechanization.data run setblock ~ ~4 ~ minecraft:sugar_cane
execute if block ~ ~2 ~ minecraft:cactus if block ~ ~3 ~ minecraft:air store success score #success mechanization.data run setblock ~ ~3 ~ minecraft:cactus
execute if block ~ ~2 ~ minecraft:cactus if block ~ ~4 ~ minecraft:air store success score #success mechanization.data run setblock ~ ~4 ~ minecraft:cactus
