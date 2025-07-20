
# no upgrade recipes
execute if items block ~ ~ ~ container.1 minecraft:copper_ingot unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 20
execute if items block ~ ~ ~ container.1 minecraft:copper_ingot if items block ~ ~ ~ container.7 minecraft:iron_ingot run scoreboard players set #flux mechanization.data 20

execute if items block ~ ~ ~ container.1 minecraft:iron_ingot unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 40
execute if items block ~ ~ ~ container.1 minecraft:iron_ingot if items block ~ ~ ~ container.7 *[minecraft:custom_data~{smithed:{dict:{ingot:{tin: 1b}}}}] run scoreboard players set #flux mechanization.data 40

execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{tin: 1b}}}}] unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 60
execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{tin: 1b}}}}] if items block ~ ~ ~ container.7 minecraft:gold_ingot run scoreboard players set #flux mechanization.data 60

execute if items block ~ ~ ~ container.1 minecraft:gold_ingot unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 80
execute if items block ~ ~ ~ container.1 minecraft:gold_ingot if items block ~ ~ ~ container.7 *[minecraft:custom_data~{smithed:{dict:{ingot:{uranium: 1b}}}}] run scoreboard players set #flux mechanization.data 80

execute if items block ~ ~ ~ container.1 minecraft:amethyst_shard unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 40
execute if items block ~ ~ ~ container.1 minecraft:amethyst_shard if items block ~ ~ ~ container.7 minecraft:emerald run scoreboard players set #flux mechanization.data 40

execute if items block ~ ~ ~ container.1 minecraft:blackstone unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 100
execute if items block ~ ~ ~ container.1 minecraft:blackstone if items block ~ ~ ~ container.7 minecraft:gilded_blackstone run scoreboard players set #flux mechanization.data 100

execute if items block ~ ~ ~ container.1 minecraft:sand unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 5
execute if items block ~ ~ ~ container.1 minecraft:sand if items block ~ ~ ~ container.7 minecraft:suspicious_sand run scoreboard players set #flux mechanization.data 5

execute if items block ~ ~ ~ container.1 minecraft:gravel unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 5
execute if items block ~ ~ ~ container.1 minecraft:gravel if items block ~ ~ ~ container.7 minecraft:suspicious_gravel run scoreboard players set #flux mechanization.data 5

execute if items block ~ ~ ~ container.1 minecraft:ink_sac unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 5
execute if items block ~ ~ ~ container.1 minecraft:ink_sac if items block ~ ~ ~ container.7 minecraft:glow_ink_sac run scoreboard players set #flux mechanization.data 5

execute if items block ~ ~ ~ container.1 minecraft:egg unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 40
execute if items block ~ ~ ~ container.1 minecraft:egg if items block ~ ~ ~ container.7 minecraft:turtle_egg run scoreboard players set #flux mechanization.data 40

execute if items block ~ ~ ~ container.1 minecraft:leather_horse_armor unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 50
execute if items block ~ ~ ~ container.1 minecraft:leather_horse_armor if items block ~ ~ ~ container.7 minecraft:iron_horse_armor run scoreboard players set #flux mechanization.data 50

execute if items block ~ ~ ~ container.1 minecraft:iron_horse_armor unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 100
execute if items block ~ ~ ~ container.1 minecraft:iron_horse_armor if items block ~ ~ ~ container.7 minecraft:golden_horse_armor run scoreboard players set #flux mechanization.data 100

execute if items block ~ ~ ~ container.1 minecraft:golden_horse_armor unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 200
execute if items block ~ ~ ~ container.1 minecraft:golden_horse_armor if items block ~ ~ ~ container.7 minecraft:diamond_horse_armor run scoreboard players set #flux mechanization.data 200

# upgrade recipes
execute if entity @s[tag=!mechanization.upgraded] run return 0

execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{uranium: 1b}}}}] unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 160
execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{uranium: 1b}}}}] if items block ~ ~ ~ container.7 *[minecraft:custom_data~{smithed:{dict:{ingot:{plutonium: 1b}}}}] run scoreboard players set #flux mechanization.data 160

execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{plutonium: 1b}}}}] unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 240
execute if items block ~ ~ ~ container.1 *[minecraft:custom_data~{smithed:{dict:{ingot:{plutonium: 1b}}}}] if items block ~ ~ ~ container.7 *[minecraft:custom_data~{smithed:{dict:{ingot:{titanium: 1b}}}}] run scoreboard players set #flux mechanization.data 240

execute if items block ~ ~ ~ container.1 minecraft:emerald unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 150
execute if items block ~ ~ ~ container.1 minecraft:emerald if items block ~ ~ ~ container.7 minecraft:diamond run scoreboard players set #flux mechanization.data 150

execute if items block ~ ~ ~ container.1 minecraft:turtle_egg unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 150
execute if items block ~ ~ ~ container.1 minecraft:turtle_egg if items block ~ ~ ~ container.7 minecraft:sniffer_egg run scoreboard players set #flux mechanization.data 150

execute if items block ~ ~ ~ container.1 minecraft:creeper_head unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 400
execute if items block ~ ~ ~ container.1 minecraft:creeper_head if items block ~ ~ ~ container.7 minecraft:dragon_head run scoreboard players set #flux mechanization.data 400

execute if items block ~ ~ ~ container.1 minecraft:piglin_head unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 400
execute if items block ~ ~ ~ container.1 minecraft:piglin_head if items block ~ ~ ~ container.7 minecraft:piglin_head run scoreboard players set #flux mechanization.data 400

execute if items block ~ ~ ~ container.1 minecraft:nether_star unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 200
execute if items block ~ ~ ~ container.1 minecraft:nether_star if items block ~ ~ ~ container.7 minecraft:echo_shard run scoreboard players set #flux mechanization.data 200

execute if items block ~ ~ ~ container.1 minecraft:echo_shard unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 1000
execute if items block ~ ~ ~ container.1 minecraft:echo_shard if items block ~ ~ ~ container.7 minecraft:heart_of_the_sea run scoreboard players set #flux mechanization.data 1000

execute if items block ~ ~ ~ container.1 minecraft:golden_apple unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 1000
execute if items block ~ ~ ~ container.1 minecraft:golden_apple if items block ~ ~ ~ container.7 minecraft:enchanted_golden_apple run scoreboard players set #flux mechanization.data 1000

execute if items block ~ ~ ~ container.1 minecraft:sniffer_egg unless items block ~ ~ ~ container.7 * run scoreboard players set #flux mechanization.data 2000
execute if items block ~ ~ ~ container.1 minecraft:sniffer_egg if items block ~ ~ ~ container.7 minecraft:dragon_egg run scoreboard players set #flux mechanization.data 2000
