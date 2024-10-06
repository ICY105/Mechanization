
execute if block ~ ~ ~ minecraft:wheat[age=7] run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ minecraft:wheat[age=7] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:wheat[age=0] replace

execute if block ~ ~ ~ minecraft:potatoes[age=7] run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ minecraft:potatoes[age=7] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:potatoes[age=0] replace

execute if block ~ ~ ~ minecraft:carrots[age=7] run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ minecraft:carrots[age=7] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:carrots[age=0] replace

execute if block ~ ~ ~ minecraft:nether_wart[age=3] run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ minecraft:nether_wart[age=3] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:nether_wart[age=0] replace

execute if block ~ ~ ~ minecraft:beetroots[age=3] run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ minecraft:beetroots[age=3] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:beetroots[age=0] replace

execute if block ~ ~ ~ minecraft:cocoa[age=2] run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ minecraft:cocoa[age=2] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:cocoa[age=0] replace

execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1] replace

execute if block ~ ~ ~ minecraft:pumpkin store success score #success mechanization.data run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:melon store success score #success mechanization.data run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~1 ~ minecraft:sugar_cane store success score #success mechanization.data run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~1 ~ minecraft:cactus store success score #success mechanization.data run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~1 ~ minecraft:kelp store success score #success mechanization.data run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~1 ~ minecraft:bamboo store success score #success mechanization.data run setblock ~ ~1 ~ minecraft:air destroy
