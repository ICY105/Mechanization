
$execute unless data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)] run return 0

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.mining_speed 10
scoreboard players operation #mining_speed mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.mining_area
scoreboard players operation #mining_area mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.attack_damage
scoreboard players operation #attack_damage mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.unbreaking
scoreboard players operation #unbreaking mechanization.data += #value mechanization.data

