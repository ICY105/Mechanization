
execute unless items block ~ ~ ~ container.0 * unless items block -30000000 0 3201 container.0 minecraft:potion run return 0
execute unless items block ~ ~ ~ container.4 * if items block -30000000 0 3201 container.0 minecraft:blaze_powder run return 4

execute unless items block ~ ~ ~ container.1 * if items block -30000000 0 3201 container.0 minecraft:potion run return 1
execute unless items block ~ ~ ~ container.2 * if items block -30000000 0 3201 container.0 minecraft:potion run return 2
execute unless items block ~ ~ ~ container.3 * if items block -30000000 0 3201 container.0 minecraft:potion run return 3

return -1
