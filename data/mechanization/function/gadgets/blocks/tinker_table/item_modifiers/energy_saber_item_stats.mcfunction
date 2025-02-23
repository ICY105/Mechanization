
$execute unless data storage mechanization:temp list[$(index)] run return 0

$execute store result score #value mechanization.data run data get storage mechanization:temp list[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.attack_damage 10
scoreboard players operation #attack_damage mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp list[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.attack_speed 10
scoreboard players operation #attack_speed mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp list[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.energy_saber_range
scoreboard players operation #throw_range mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp list[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.unbreaking
scoreboard players operation #unbreaking mechanization.data += #value mechanization.data

