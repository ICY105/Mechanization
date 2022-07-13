
scoreboard players set #armor mechanization.data 0
scoreboard players set #toughness mechanization.data 0
scoreboard players set #shield mechanization.data 0
scoreboard players set #health mechanization.data 0
scoreboard players set #speed mechanization.data 0
scoreboard players set #knockback mechanization.data 0

# stats
execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.armor 100
scoreboard players operation #armor mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.armor 100
scoreboard players operation #armor mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.armor 100
scoreboard players operation #armor mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.armor 100
scoreboard players operation #armor mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.armor 100
scoreboard players operation #armor mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.armor 100
scoreboard players operation #armor mechanization.data += #value mechanization.data

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.armor_toughness 100
scoreboard players operation #toughness mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.armor_toughness 100
scoreboard players operation #toughness mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.armor_toughness 100
scoreboard players operation #toughness mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.armor_toughness 100
scoreboard players operation #toughness mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.armor_toughness 100
scoreboard players operation #toughness mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.armor_toughness 100
scoreboard players operation #toughness mechanization.data += #value mechanization.data

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.health 10
scoreboard players operation #health mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.health 10
scoreboard players operation #health mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.health 10
scoreboard players operation #health mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.health 10
scoreboard players operation #health mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.health 10
scoreboard players operation #health mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.health 10
scoreboard players operation #health mechanization.data += #value mechanization.data

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.speed 100
scoreboard players operation #speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.speed 100
scoreboard players operation #speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.speed 100
scoreboard players operation #speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.speed 100
scoreboard players operation #speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.speed 100
scoreboard players operation #speed mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.speed 100
scoreboard players operation #speed mechanization.data += #value mechanization.data

execute store result score #value mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.stats.kb_resist 10
scoreboard players operation #knockback mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.stats.kb_resist 10
scoreboard players operation #knockback mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.stats.kb_resist 10
scoreboard players operation #knockback mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.stats.kb_resist 10
scoreboard players operation #knockback mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.stats.kb_resist 10
scoreboard players operation #knockback mechanization.data += #value mechanization.data
execute store result score #value mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.stats.kb_resist 10
scoreboard players operation #knockback mechanization.data += #value mechanization.data

# get type
scoreboard players set #type mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:leather_helmet"} run scoreboard players set #type mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:leather_chestplate"} run scoreboard players set #type mechanization.data 2
execute if data storage mechanization:temp obj{id:"minecraft:elytra"} run scoreboard players set #type mechanization.data 2
execute if data storage mechanization:temp obj{id:"minecraft:leather_leggings"} run scoreboard players set #type mechanization.data 3
execute if data storage mechanization:temp obj{id:"minecraft:leather_boots"} run scoreboard players set #type mechanization.data 4

# apply stats
execute store result storage mechanization:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:0}].Amount double 0.01 run scoreboard players get #armor mechanization.data
execute store result storage mechanization:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness",Operation:0}].Amount double 0.01 run scoreboard players get #toughness mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.upgrades.shield int 1 run scoreboard players get #shield mechanization.data
execute if score #health mechanization.data matches 11.. run scoreboard players set #health mechanization.data 10
execute store result storage mechanization:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount double 0.1 run scoreboard players get #health mechanization.data
execute store result storage mechanization:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:0}].Amount double 0.01 run scoreboard players get #speed mechanization.data
execute store result storage mechanization:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance",Operation:0}].Amount double 0.1 run scoreboard players get #knockback mechanization.data

# special effects
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"illuminating"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_illuminating","color":"gray","italic":false}'
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"shield_recharge"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"mech.lore.shield_recharge","color":"gray","italic":false}'

execute if score #type mechanization.data matches 1 if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"rebreather"} run data modify storage mechanization:temp obj.tag.CustomModelData set value 6424900
execute if score #type mechanization.data matches 1 if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"night_vision"} run data modify storage mechanization:temp obj.tag.CustomModelData set value 6424901
execute if score #type mechanization.data matches 1 if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"rebreather"} if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"night_vision"} run data modify storage mechanization:temp obj.tag.CustomModelData set value 6424902
execute if score #type mechanization.data matches 1 unless data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"rebreather"} unless data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"night_vision"} run data modify storage mechanization:temp obj.tag.CustomModelData set value 6424106

execute if score #type mechanization.data matches 2 if data storage mechanization:temp list[{id:"minecraft:elytra"}] run data modify storage mechanization:temp obj merge value {id:"minecraft:elytra",tag:{CustomModelData:6424900}}
execute if score #type mechanization.data matches 2 if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"jetpack"} run data modify storage mechanization:temp obj merge value {id:"minecraft:elytra",tag:{CustomModelData:6424901}}
execute if score #type mechanization.data matches 2 unless data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"jetpack"} unless data storage mechanization:temp list[{id:"minecraft:elytra"}] if data storage mechanization:temp obj{id:"minecraft:elytra"} run data modify storage mechanization:temp obj merge value {id:"minecraft:leather_chestplate",tag:{CustomModelData:6424107}}

execute if score #type mechanization.data matches 4 if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"slowfall"} run data modify storage mechanization:temp obj.tag.CustomModelData set value 6424900
execute if score #type mechanization.data matches 4 if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"wall_walk"} run data modify storage mechanization:temp obj.tag.CustomModelData set value 6424901
execute if score #type mechanization.data matches 4 if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"slowfall"} if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"wall_walk"} run data modify storage mechanization:temp obj.tag.CustomModelData set value 6424902
execute if score #type mechanization.data matches 4 unless data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"slowfall"} unless data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"wall_walk"} run data modify storage mechanization:temp obj.tag.CustomModelData set value 6424109

# add stats lore
data modify storage mechanization:temp obj.tag.display.Lore append value '{"text":""}'
execute if data storage mechanization:temp obj.tag.mechanization{id:"modular_helmet"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.head","color":"gray","italic":"false"}'
execute if data storage mechanization:temp obj.tag.mechanization{id:"modular_chestplate"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.chest","color":"gray","italic":"false"}'
execute if data storage mechanization:temp obj.tag.mechanization{id:"modular_leggings"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.legs","color":"gray","italic":"false"}'
execute if data storage mechanization:temp obj.tag.mechanization{id:"modular_boots"} run data modify storage mechanization:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.feet","color":"gray","italic":"false"}'

scoreboard players operation #value mechanization.data = #armor mechanization.data
scoreboard players operation #armor mechanization.data /= #cons.100 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.100 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#armor","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.armor"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#armor","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.armor"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

scoreboard players operation #value mechanization.data = #toughness mechanization.data
scoreboard players operation #toughness mechanization.data /= #cons.100 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.100 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#toughness","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.armor_toughness"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#toughness","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.armor_toughness"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#shield","objective":"mechanization.data"}}," ",{"translate":"mech.lore.shield_capacity"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

scoreboard players operation #value mechanization.data = #health mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #health mechanization.data matches 0 run scoreboard players set #value mechanization.data -1000
scoreboard players operation #health mechanization.data /= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#health","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.max_health"}]'
execute if score #value mechanization.data matches 1.. run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#health","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.max_health"}]'
execute if score #value mechanization.data matches 0.. run data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

scoreboard players operation #value mechanization.data = #speed mechanization.data
scoreboard players operation #value mechanization.data %= #cons.100 mechanization.data
execute if score #speed mechanization.data matches 0 run scoreboard players set #value mechanization.data -1000
scoreboard players operation #speed mechanization.data /= #cons.100 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#speed","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.movement_speed"}]'
execute if score #value mechanization.data matches 1..9 run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#speed","objective":"mechanization.data"}},".0",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.movement_speed"}]'
execute if score #value mechanization.data matches 10.. run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#speed","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.movement_speed"}]'
execute if score #value mechanization.data matches 0.. run data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

scoreboard players operation #value mechanization.data = #knockback mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #knockback mechanization.data matches 0 run scoreboard players set #value mechanization.data -1000
scoreboard players operation #knockback mechanization.data /= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#knockback","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.knockback_resistance"}]'
execute if score #value mechanization.data matches 1.. run data modify block -30000000 0 3202 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"#knockback","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.generic.knockback_resistance"}]'
execute if score #value mechanization.data matches 0.. run data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

data modify block -30000000 0 3202 Text1 set value '[{"translate":"mech.lore.added_by","color":"blue","italic":false}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1
