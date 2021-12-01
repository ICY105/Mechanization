
#armor
scoreboard players set $temp_0 mechanization.data 0
#armor_toughness
scoreboard players set $temp_1 mechanization.data 0
#shield capacity
scoreboard players set $temp_2 mechanization.data 0
#max health
scoreboard players set $temp_3 mechanization.data 0
#speed
scoreboard players set $temp_4 mechanization.data 0
#kb resist
scoreboard players set $temp_5 mechanization.data 0

#base stats
execute store result score $temp_6 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.base_stats.armor 10
execute if score $temp_6 mechanization.data > $temp_0 mechanization.data run scoreboard players operation $temp_0 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.base_stats.armor 10
execute if score $temp_6 mechanization.data > $temp_0 mechanization.data run scoreboard players operation $temp_0 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.base_stats.armor 10
execute if score $temp_6 mechanization.data > $temp_0 mechanization.data run scoreboard players operation $temp_0 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.base_stats.armor 10
execute if score $temp_6 mechanization.data > $temp_0 mechanization.data run scoreboard players operation $temp_0 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.base_stats.armor 10
execute if score $temp_6 mechanization.data > $temp_0 mechanization.data run scoreboard players operation $temp_0 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.base_stats.armor 10
execute if score $temp_6 mechanization.data > $temp_0 mechanization.data run scoreboard players operation $temp_0 mechanization.data = $temp_6 mech_data

execute store result score $temp_6 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.base_stats.armor_toughness 10
execute unless score $temp_6 mechanization.data matches 0 if score $temp_6 mechanization.data > $temp_1 mechanization.data run scoreboard players operation $temp_1 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.base_stats.armor_toughness 10
execute unless score $temp_6 mechanization.data matches 0 if score $temp_6 mechanization.data > $temp_1 mechanization.data run scoreboard players operation $temp_1 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.base_stats.armor_toughness 10
execute unless score $temp_6 mechanization.data matches 0 if score $temp_6 mechanization.data > $temp_1 mechanization.data run scoreboard players operation $temp_1 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.base_stats.armor_toughness 10
execute unless score $temp_6 mechanization.data matches 0 if score $temp_6 mechanization.data > $temp_1 mechanization.data run scoreboard players operation $temp_1 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.base_stats.armor_toughness 10
execute unless score $temp_6 mechanization.data matches 0 if score $temp_6 mechanization.data > $temp_1 mechanization.data run scoreboard players operation $temp_1 mechanization.data = $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.base_stats.armor_toughness 10
execute unless score $temp_6 mechanization.data matches 0 if score $temp_6 mechanization.data > $temp_1 mechanization.data run scoreboard players operation $temp_1 mechanization.data = $temp_6 mech_data

#bonus stats
execute store result score $temp_6 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.armor 10
scoreboard players operation $temp_0 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.armor 10
scoreboard players operation $temp_0 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.armor 10
scoreboard players operation $temp_0 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.armor 10
scoreboard players operation $temp_0 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.armor 10
scoreboard players operation $temp_0 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.armor 10
scoreboard players operation $temp_0 mechanization.data += $temp_6 mech_data

execute store result score $temp_6 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.armor_toughness 10
scoreboard players operation $temp_1 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.armor_toughness 10
scoreboard players operation $temp_1 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.armor_toughness 10
scoreboard players operation $temp_1 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.armor_toughness 10
scoreboard players operation $temp_1 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.armor_toughness 10
scoreboard players operation $temp_1 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.armor_toughness 10
scoreboard players operation $temp_1 mechanization.data += $temp_6 mech_data

execute store result score $temp_6 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.shield
scoreboard players operation $temp_2 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.shield
scoreboard players operation $temp_2 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.shield
scoreboard players operation $temp_2 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.shield
scoreboard players operation $temp_2 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.shield
scoreboard players operation $temp_2 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.shield
scoreboard players operation $temp_2 mechanization.data += $temp_6 mech_data

execute store result score $temp_6 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.health 10
scoreboard players operation $temp_3 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.health 10
scoreboard players operation $temp_3 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.health 10
scoreboard players operation $temp_3 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.health 10
scoreboard players operation $temp_3 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.health 10
scoreboard players operation $temp_3 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.health 10
scoreboard players operation $temp_3 mechanization.data += $temp_6 mech_data

execute store result score $temp_6 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.speed 100
scoreboard players operation $temp_4 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.speed 100
scoreboard players operation $temp_4 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.speed 100
scoreboard players operation $temp_4 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.speed 100
scoreboard players operation $temp_4 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.speed 100
scoreboard players operation $temp_4 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.speed 100
scoreboard players operation $temp_4 mechanization.data += $temp_6 mech_data

execute store result score $temp_6 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.kb_resist 10
scoreboard players operation $temp_5 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.kb_resist 10
scoreboard players operation $temp_5 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.kb_resist 10
scoreboard players operation $temp_5 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.kb_resist 10
scoreboard players operation $temp_5 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.kb_resist 10
scoreboard players operation $temp_5 mechanization.data += $temp_6 mech_data
execute store result score $temp_6 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.kb_resist 10
scoreboard players operation $temp_5 mechanization.data += $temp_6 mech_data

#get type
scoreboard players set $temp_7 mechanization.data 0
execute if data storage du:temp obj{id:"minecraft:leather_helmet"} run scoreboard players set $temp_7 mechanization.data 1
execute if data storage du:temp obj{id:"minecraft:leather_chestplate"} run scoreboard players set $temp_7 mechanization.data 2
execute if data storage du:temp obj{id:"minecraft:elytra"} run scoreboard players set $temp_7 mechanization.data 2
execute if data storage du:temp obj{id:"minecraft:leather_leggings"} run scoreboard players set $temp_7 mechanization.data 3
execute if data storage du:temp obj{id:"minecraft:leather_boots"} run scoreboard players set $temp_7 mechanization.data 4

#apply stats
execute store result storage du:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:0}].Amount double 0.1 run scoreboard players get $temp_0 mech_data
execute store result storage du:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness",Operation:0}].Amount double 0.1 run scoreboard players get $temp_1 mech_data
execute store result storage du:temp obj.tag.mech_upgrades.shield int 1 run scoreboard players get $temp_2 mech_data
execute store result storage du:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount double 0.1 run scoreboard players get $temp_3 mech_data
execute store result storage du:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:0}].Amount double 0.01 run scoreboard players get $temp_4 mech_data
execute store result storage du:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance",Operation:0}].Amount double 0.1 run scoreboard players get $temp_5 mech_data

#special effects
execute if data storage du:temp list[].tag.mech_upgrade{effect:"illuminating"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_illuminating","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"shield_recharge"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.shield_recharge","color":"gray","italic":false}'

execute if score $temp_7 mechanization.data matches 1 if data storage du:temp list[].tag.mech_upgrade{effect:"rebreather"} run data modify storage du:temp obj.tag.CustomModelData set value 6424900
execute if score $temp_7 mechanization.data matches 1 if data storage du:temp list[].tag.mech_upgrade{effect:"night_vision"} run data modify storage du:temp obj.tag.CustomModelData set value 6424901
execute if score $temp_7 mechanization.data matches 1 if data storage du:temp list[].tag.mech_upgrade{effect:"rebreather"} if data storage du:temp list[].tag.mech_upgrade{effect:"night_vision"} run data modify storage du:temp obj.tag.CustomModelData set value 6424902
execute if score $temp_7 mechanization.data matches 1 unless data storage du:temp list[].tag.mech_upgrade{effect:"rebreather"} unless data storage du:temp list[].tag.mech_upgrade{effect:"night_vision"} run data modify storage du:temp obj.tag.CustomModelData set value 6424106

execute if score $temp_7 mechanization.data matches 2 if data storage du:temp list[{id:"minecraft:elytra"}] run data modify storage du:temp obj merge value {id:"minecraft:elytra",tag:{CustomModelData:6424900}}
execute if score $temp_7 mechanization.data matches 2 if data storage du:temp list[].tag.mech_upgrade{effect:"jetpack"} run data modify storage du:temp obj merge value {id:"minecraft:elytra",tag:{CustomModelData:6424901}}
execute if score $temp_7 mechanization.data matches 2 unless data storage du:temp list[].tag.mech_upgrade{effect:"jetpack"} unless data storage du:temp list[{id:"minecraft:elytra"}] if data storage du:temp obj{id:"minecraft:elytra"} run data modify storage du:temp obj merge value {id:"minecraft:leather_chestplate",tag:{CustomModelData:6424107}}

execute if score $temp_7 mechanization.data matches 4 if data storage du:temp list[].tag.mech_upgrade{effect:"slowfall"} run data modify storage du:temp obj.tag.CustomModelData set value 6424900
execute if score $temp_7 mechanization.data matches 4 if data storage du:temp list[].tag.mech_upgrade{effect:"wall_walk"} run data modify storage du:temp obj.tag.CustomModelData set value 6424901
execute if score $temp_7 mechanization.data matches 4 if data storage du:temp list[].tag.mech_upgrade{effect:"slowfall"} if data storage du:temp list[].tag.mech_upgrade{effect:"wall_walk"} run data modify storage du:temp obj.tag.CustomModelData set value 6424902
execute if score $temp_7 mechanization.data matches 4 unless data storage du:temp list[].tag.mech_upgrade{effect:"slowfall"} unless data storage du:temp list[].tag.mech_upgrade{effect:"wall_walk"} run data modify storage du:temp obj.tag.CustomModelData set value 6424109

#add stats lore
data modify storage du:temp obj.tag.display.Lore append value '{"text":""}'
execute if data storage du:temp obj.tag{mech_itemid:4106} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.head","color":"gray","italic":"false"}'
execute if data storage du:temp obj.tag{mech_itemid:4107} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.chest","color":"gray","italic":"false"}'
execute if data storage du:temp obj.tag{mech_itemid:4108} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.legs","color":"gray","italic":"false"}'
execute if data storage du:temp obj.tag{mech_itemid:4109} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.feet","color":"gray","italic":"false"}'

scoreboard players operation $temp_6 mechanization.data = $temp_0 mech_data
scoreboard players operation $temp_0 mechanization.data /= $cons.10 du_data
scoreboard players operation $temp_6 mechanization.data %= $cons.10 du_data
execute if score $temp_6 mechanization.data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_0","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.armor"}]'
execute unless score $temp_6 mechanization.data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_0","objective":"mech_data"}},".",{"score":{"name":"$temp_6","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.armor"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

scoreboard players operation $temp_6 mechanization.data = $temp_1 mech_data
scoreboard players operation $temp_1 mechanization.data /= $cons.10 du_data
scoreboard players operation $temp_6 mechanization.data %= $cons.10 du_data
execute if score $temp_6 mechanization.data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_1","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.armor_toughness"}]'
execute unless score $temp_6 mechanization.data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_1","objective":"mech_data"}},".",{"score":{"name":"$temp_6","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.armor_toughness"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_2","objective":"mech_data"}}," ",{"translate":"mech.lore.shield_capacity"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

scoreboard players operation $temp_6 mechanization.data = $temp_3 mech_data
scoreboard players operation $temp_6 mechanization.data %= $cons.10 du_data
execute if score $temp_3 mechanization.data matches 0 run scoreboard players set $temp_6 mechanization.data -1000
scoreboard players operation $temp_3 mechanization.data /= $cons.10 du_data
execute if score $temp_6 mechanization.data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_3","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.max_health"}]'
execute if score $temp_6 mechanization.data matches 1.. run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_3","objective":"mech_data"}},".",{"score":{"name":"$temp_6","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.max_health"}]'
execute if score $temp_6 mechanization.data matches 0.. run data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

scoreboard players operation $temp_6 mechanization.data = $temp_4 mech_data
scoreboard players operation $temp_6 mechanization.data %= $cons.100 du_data
execute if score $temp_4 mechanization.data matches 0 run scoreboard players set $temp_6 mechanization.data -1000
scoreboard players operation $temp_4 mechanization.data /= $cons.100 du_data
execute if score $temp_6 mechanization.data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_4","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.movement_speed"}]'
execute if score $temp_6 mechanization.data matches 1..9 run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_4","objective":"mech_data"}},".0",{"score":{"name":"$temp_6","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.movement_speed"}]'
execute if score $temp_6 mechanization.data matches 10.. run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_4","objective":"mech_data"}},".",{"score":{"name":"$temp_6","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.movement_speed"}]'
execute if score $temp_6 mechanization.data matches 0.. run data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

scoreboard players operation $temp_6 mechanization.data = $temp_5 mech_data
scoreboard players operation $temp_6 mechanization.data %= $cons.10 du_data
execute if score $temp_5 mechanization.data matches 0 run scoreboard players set $temp_6 mechanization.data -1000
scoreboard players operation $temp_5 mechanization.data /= $cons.10 du_data
execute if score $temp_6 mechanization.data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_5","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.knockback_resistance"}]'
execute if score $temp_6 mechanization.data matches 1.. run data modify block -29999999 0 1602 Text1 set value '[{"text":"+","color":"blue","italic":"false"},{"score":{"name":"$temp_5","objective":"mech_data"}},".",{"score":{"name":"$temp_6","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.knockback_resistance"}]'
execute if score $temp_6 mechanization.data matches 0.. run data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

data modify block -29999999 0 1602 Text1 set value '[{"translate":"mech.lore.added_by","color":"blue","italic":false}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1
