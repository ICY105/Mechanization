
scoreboard players set @s mechanization.data 0
item modify block ~ ~ ~ container.1 mechanization:decrement_count
item modify block ~ ~ ~ container.7 mechanization:increment_count

# no upgrade recipes
execute if items block ~ ~ ~ container.1 minecraft:copper_ingot unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:iron_ingot

execute if items block ~ ~ ~ container.1 minecraft:iron_ingot unless items block ~ ~ ~ container.7 * run loot replace block ~ ~ ~ container.7 loot mechanization:base/tin_ingot

execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{tin: 1b}}}}] unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:gold_ingot

execute if items block ~ ~ ~ container.1 minecraft:gold_ingot unless items block ~ ~ ~ container.7 * run loot replace block ~ ~ ~ container.7 loot mechanization:base/uranium_ingot

execute if items block ~ ~ ~ container.1 minecraft:amethyst_shard unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:emerald

execute if items block ~ ~ ~ container.1 minecraft:blackstone unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:gilded_blackstone

execute if items block ~ ~ ~ container.1 minecraft:sand unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:suspicious_sand

execute if items block ~ ~ ~ container.1 minecraft:gravel unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:suspicious_gravel

execute if items block ~ ~ ~ container.1 minecraft:ink_sac unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:glow_ink_sac

execute if items block ~ ~ ~ container.1 minecraft:egg unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:turtle_egg

execute if items block ~ ~ ~ container.1 minecraft:leather_horse_armor unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:iron_horse_armor

execute if items block ~ ~ ~ container.1 minecraft:iron_horse_armor unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:golden_horse_armor

execute if items block ~ ~ ~ container.1 minecraft:golden_horse_armor unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:diamond_horse_armor

# upgrade recipes
execute if entity @s[tag=!mechanization.upgraded] run return 0

execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{uranium: 1b}}}}] unless items block ~ ~ ~ container.7 * run loot replace block ~ ~ ~ container.7 loot mechanization:base/plutonium_ingot

execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{plutonium: 1b}}}}] unless items block ~ ~ ~ container.7 * run loot replace block ~ ~ ~ container.7 loot mechanization:base/titanium_ingot

execute if items block ~ ~ ~ container.1 minecraft:emerald unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:diamond

execute if items block ~ ~ ~ container.1 minecraft:turtle_egg unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:sniffer_egg

execute if items block ~ ~ ~ container.1 minecraft:creeper_head unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:dragon_head

execute if items block ~ ~ ~ container.1 minecraft:piglin_head unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:piglin_head

execute if items block ~ ~ ~ container.1 minecraft:nether_star unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:echo_shard

execute if items block ~ ~ ~ container.1 minecraft:echo_shard unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:heart_of_the_sea

execute if items block ~ ~ ~ container.1 minecraft:golden_apple unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:enchanted_golden_apple

execute if items block ~ ~ ~ container.1 minecraft:sniffer_egg unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:dragon_egg
