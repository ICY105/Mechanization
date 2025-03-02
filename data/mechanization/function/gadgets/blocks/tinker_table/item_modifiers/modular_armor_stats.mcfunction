
$execute unless data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)] run return 0

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.armor 100
scoreboard players operation #armor mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.armor_toughness 100
scoreboard players operation #toughness mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.health 10
scoreboard players operation #health mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.speed 100
scoreboard players operation #speed mechanization.data += #value mechanization.data

$execute store result score #value mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[$(index)].components."minecraft:custom_data".mechanization.upgrade.stats.kb_resist 10
scoreboard players operation #knockback mechanization.data += #value mechanization.data
