
data remove storage mechanization:temp obj.tag.Enchantments
data remove storage mechanization:temp obj.tag.auto_smelt
data remove storage mechanization:temp obj.tag.flor_dat

scoreboard players set #mining_speed mechanization.data 0
scoreboard players set #mining_area mechanization.data 1
scoreboard players set #attack_damage mechanization.data 30
scoreboard players set #unbreaking mechanization.data 0

# stats
execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.mining_speed
scoreboard players operation #mining_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.mining_speed
scoreboard players operation #mining_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.mining_speed
scoreboard players operation #mining_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.mining_speed
scoreboard players operation #mining_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.mining_speed
scoreboard players operation #mining_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.mining_speed
scoreboard players operation #mining_speed mechanization.data += #value mechanization.data

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.mining_area
scoreboard players operation #mining_area mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.mining_area
scoreboard players operation #mining_area mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.mining_area
scoreboard players operation #mining_area mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.mining_area
scoreboard players operation #mining_area mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.mining_area
scoreboard players operation #mining_area mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.mining_area
scoreboard players operation #mining_area mechanization.data += #value mechanization.data

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.attack_damage 10
scoreboard players operation #attack_damage mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.attack_damage 10
scoreboard players operation #attack_damage mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.attack_damage 10
scoreboard players operation #attack_damage mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.attack_damage 10
scoreboard players operation #attack_damage mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.attack_damage 10
scoreboard players operation #attack_damage mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.attack_damage 10
scoreboard players operation #attack_damage mechanization.data += #value mechanization.data

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.unbreaking
scoreboard players operation #unbreaking mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.unbreaking
scoreboard players operation #unbreaking mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.unbreaking
scoreboard players operation #unbreaking mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.unbreaking
scoreboard players operation #unbreaking mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.unbreaking
scoreboard players operation #unbreaking mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.unbreaking
scoreboard players operation #unbreaking mechanization.data += #value mechanization.data

# apply stats
scoreboard players remove #attack_damage mechanization.data 10
execute store result storage mechanization:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount double 0.1 run scoreboard players get #attack_damage mechanization.data
scoreboard players add #attack_damage mechanization.data 10

execute store result storage mechanization:temp obj.tag.mechanization.upgrades.mining_speed int 1 run scoreboard players get #mining_speed mechanization.data
execute if score #mining_speed mechanization.data matches 2..4 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:1}
execute if score #mining_speed mechanization.data matches 5..8 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:2}
execute if score #mining_speed mechanization.data matches 10..16 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:3}
execute if score #mining_speed mechanization.data matches 17..25 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:4}
execute if score #mining_speed mechanization.data matches 26..36 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:5}
execute if score #mining_speed mechanization.data matches 37..49 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:6}
execute if score #mining_speed mechanization.data matches 50..64 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:7}
execute if score #mining_speed mechanization.data matches 65..81 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:8}
execute if score #mining_speed mechanization.data matches 82..100 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:9}
execute if score #mining_speed mechanization.data matches 101.. run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:10}

execute if score #mining_area mechanization.data matches 9.. run scoreboard players set #mining_area mechanization.data 8
execute store result storage mechanization:temp obj.tag.mechanization.upgrades.mining_area int 1 run scoreboard players get #mining_area mechanization.data

execute if score #unbreaking mechanization.data matches 11.. run scoreboard players set #unbreaking mechanization.data 10
execute if score #unbreaking mechanization.data matches 1.. run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:unbreaking",lvl:1}
execute if score #unbreaking mechanization.data matches 1.. store result storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl int 1 run scoreboard players get #unbreaking mechanization.data

# special effects
scoreboard players set #value mechanization.data 0
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"silk_touch"} run scoreboard players set #value mechanization.data -1
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"fortune_1"} run scoreboard players set #value mechanization.data 1
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"fortune_2"} run scoreboard players set #value mechanization.data 2
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"fortune_3"} run scoreboard players set #value mechanization.data 3
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"fortune_4"} run scoreboard players set #value mechanization.data 4
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"fortune_5"} run scoreboard players set #value mechanization.data 5
execute if score #value mechanization.data matches -1 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:silk_touch",lvl:1}
execute if score #value mechanization.data matches 1 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:1}
execute if score #value mechanization.data matches 2 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:2}
execute if score #value mechanization.data matches 3 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:3}
execute if score #value mechanization.data matches 4 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:4}
execute if score #value mechanization.data matches 5 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:5}

execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"auto_smelt"} run data modify storage mechanization:temp obj.tag merge value {auto_smelt:1b}

execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"auto_smelt"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_auto_smelt","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"trash"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_trash","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"magnetic"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_magnetic","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"aquatic"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_aquatic","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"illuminating"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_illuminating","color":"gray","italic":false}'

# x-compat effects
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_arid"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_tree_feller","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_arid"} run data modify storage mechanization:temp obj.tag.flor_dat.burning_fire_axe set value 1b
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_aqueous"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_ore_cleave","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_aqueous"} run data modify storage mechanization:temp obj.tag.flor_dat.raging_river_pickaxe set value 1b
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_verdant"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_fortune_seeker","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_verdant"} run data modify storage mechanization:temp obj.tag.flor_dat.fortune_seeker_shovel set value 1b

# add stats lore
data modify storage mechanization:temp obj.tag.display.Lore append value '{"text":""}'
data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.mainhand","color":"gray","italic":"false"}'

scoreboard players add #mining_speed mechanization.data 9
data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#mining_speed","objective":"mechanization.data"}}," ",{"translate":"lore.mechanization.mining_speed"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]

data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#mining_area","objective":"mechanization.data"}}," ",{"translate":"lore.mechanization.mining_area"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]

scoreboard players operation #value mechanization.data = #attack_damage mechanization.data
scoreboard players operation #attack_damage mechanization.data /= #cons.10 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#attack_damage","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#attack_damage","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]

# store enchantment level
scoreboard players set #enchants mechanization.data 0

execute store result score #level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[0].lvl
scoreboard players operation #enchants mechanization.data += #level mechanization.data
execute store result score #level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[1].lvl
scoreboard players operation #enchants mechanization.data += #level mechanization.data
execute store result score #level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[2].lvl
scoreboard players operation #enchants mechanization.data += #level mechanization.data

execute store result storage mechanization:temp obj.tag.mechanization.upgrade.enchantment_level int 1 run scoreboard players get #enchants mechanization.data
