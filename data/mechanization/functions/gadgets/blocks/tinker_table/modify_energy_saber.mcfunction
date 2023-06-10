
data remove storage mechanization:temp obj.tag.Enchantments
data remove storage mechanization:temp obj.tag.flor_dat

scoreboard players set #attack_damage mechanization.data 10
scoreboard players set #attack_speed mechanization.data -40
scoreboard players set #throw_range mechanization.data 0
scoreboard players set #unbreaking mechanization.data 0

# stats
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

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.attack_speed 10
scoreboard players operation #attack_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.attack_speed 10
scoreboard players operation #attack_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.attack_speed 10
scoreboard players operation #attack_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.attack_speed 10
scoreboard players operation #attack_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.attack_speed 10
scoreboard players operation #attack_speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.attack_speed 10

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.energy_saber_range
scoreboard players operation #throw_range mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.energy_saber_range
scoreboard players operation #throw_range mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.energy_saber_range
scoreboard players operation #throw_range mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.energy_saber_range
scoreboard players operation #throw_range mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.energy_saber_range
scoreboard players operation #throw_range mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.energy_saber_range
scoreboard players operation #throw_range mechanization.data += #value mechanization.data

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
execute store result storage mechanization:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed",Operation:0}].Amount double 0.1 run scoreboard players get #attack_speed mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.upgrades.saber_range int 1 run scoreboard players get #throw_range mechanization.data

execute if score #unbreaking mechanization.data matches 11.. run scoreboard players set #unbreaking mechanization.data 10
execute if score #unbreaking mechanization.data matches 1.. run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:unbreaking",lvl:1}
execute if score #unbreaking mechanization.data matches 1.. store result storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl int 1 run scoreboard players get #unbreaking mechanization.data

# special effects
scoreboard players set #value mechanization.data 0
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"looting_1"} run scoreboard players set #value mechanization.data 1
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"looting_2"} run scoreboard players set #value mechanization.data 2
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"looting_3"} run scoreboard players set #value mechanization.data 3
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"looting_4"} run scoreboard players set #value mechanization.data 4
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"looting_5"} run scoreboard players set #value mechanization.data 5
execute if score #value mechanization.data matches 1 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:looting",lvl:1}
execute if score #value mechanization.data matches 2 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:looting",lvl:2}
execute if score #value mechanization.data matches 3 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:looting",lvl:3}
execute if score #value mechanization.data matches 4 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:looting",lvl:4}
execute if score #value mechanization.data matches 5 run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:looting",lvl:5}

execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"fire_aspect"} run data modify storage mechanization:temp obj.tag.Enchantments append value {id:"minecraft:fire_aspect",lvl:2}

execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"poison"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_poison","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"wither"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_wither","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"weakness"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_weakness","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"slowness"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_slowness","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"vampiric"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_vampiric","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"illuminating"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_illuminating","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"throwing_speed"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_throwing_speed","color":"gray","italic":false}'

# x-compat effects
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_arid"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_blazing_sweep","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_arid"} run data modify storage mechanization:temp obj.tag.flor_dat.scorching_arc_sword set value 1b
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_verdant"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"lore.mechanization.upgrade_scepter","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"flor_verdant"} run data modify storage mechanization:temp obj.tag.flor_dat.druidic_scepter set value 1b

# add stats lore
data modify storage mechanization:temp obj.tag.display.Lore append value '{"text":""}'
data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.mainhand","color":"gray","italic":"false"}'

scoreboard players operation #value mechanization.data = #attack_damage mechanization.data
scoreboard players operation #attack_damage mechanization.data /= #cons.10 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#attack_damage","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#attack_damage","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]

scoreboard players add #attack_speed mechanization.data 40
scoreboard players operation #value mechanization.data = #attack_speed mechanization.data
scoreboard players operation #attack_speed mechanization.data /= #cons.10 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#attack_speed","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#attack_speed","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]

data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#throw_range","objective":"mechanization.data"}}," ",{"translate":"lore.mechanization.energy_saber_range"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]

