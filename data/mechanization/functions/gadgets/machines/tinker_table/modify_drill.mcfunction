
data remove storage du:temp obj.tag.Enchantments
data remove storage du:temp obj.tag.du_trash
data remove storage du:temp obj.tag.du_auto_smelt

#mining speed
scoreboard players set $temp_0 mech_data 0
#mining area
scoreboard players set $temp_1 mech_data 0
#attack damage
scoreboard players set $temp_2 mech_data 30

#bonus stats
execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.mining_speed
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.mining_speed
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.mining_speed
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.mining_speed
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.mining_speed
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.mining_speed
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data

execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.mining_area
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.mining_area
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.mining_area
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.mining_area
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.mining_area
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.mining_area
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data

execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data

#apply stats
scoreboard players remove $temp_2 mech_data 10
execute store result storage du:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount double 0.1 run scoreboard players get $temp_2 mech_data
scoreboard players add $temp_2 mech_data 10

execute store result storage du:temp obj.tag.mech_upgrades.mining_speed int 1 run scoreboard players get $temp_0 mech_data
execute if score $temp_0 mech_data matches 2..4 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:1}
execute if score $temp_0 mech_data matches 5..8 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:2}
execute if score $temp_0 mech_data matches 10..16 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:3}
execute if score $temp_0 mech_data matches 17..25 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:4}
execute if score $temp_0 mech_data matches 26..36 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:5}
execute if score $temp_0 mech_data matches 37..49 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:6}
execute if score $temp_0 mech_data matches 50..64 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:7}
execute if score $temp_0 mech_data matches 65..81 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:8}
execute if score $temp_0 mech_data matches 82..100 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:9}
execute if score $temp_0 mech_data matches 101.. run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:efficiency",lvl:10}

execute if score $temp_1 mech_data matches 9.. run scoreboard players set $temp_1 mech_data 8
execute store result storage du:temp obj.tag.mech_upgrades.mining_area int 1 run scoreboard players get $temp_1 mech_data

#special effects
scoreboard players set $temp_3 mech_data 0
execute if data storage du:temp list[].tag.mech_upgrade{effect:"fortune_1"} run scoreboard players set $temp_3 mech_data 1
execute if data storage du:temp list[].tag.mech_upgrade{effect:"fortune_2"} run scoreboard players set $temp_3 mech_data 2
execute if data storage du:temp list[].tag.mech_upgrade{effect:"fortune_3"} run scoreboard players set $temp_3 mech_data 3
execute if data storage du:temp list[].tag.mech_upgrade{effect:"fortune_4"} run scoreboard players set $temp_3 mech_data 4
execute if data storage du:temp list[].tag.mech_upgrade{effect:"silk_touch"} run scoreboard players set $temp_3 mech_data -1
execute if score $temp_3 mech_data matches 1 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:1}
execute if score $temp_3 mech_data matches 2 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:2}
execute if score $temp_3 mech_data matches 3 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:3}
execute if score $temp_3 mech_data matches 4 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:fortune",lvl:4}
execute if score $temp_3 mech_data matches -1 run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:silk_touch",lvl:1}

execute if data storage du:temp list[].tag.mech_upgrade{effect:"auto_smelt"} run data modify storage du:temp obj.tag merge value {du_auto_smelt:1b}
execute if data storage du:temp list[].tag.mech_upgrade{effect:"trash"} run data modify storage du:temp obj.tag merge value {du_trash:1b}

execute if data storage du:temp list[].tag.mech_upgrade{effect:"auto_smelt"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_auto_smelt","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"trash"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_trash","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"magnetic"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_magnetic","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"aquatic"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_aquatic","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"illuminating"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_illuminating","color":"gray","italic":false}'

#add stats lore
data modify storage du:temp obj.tag.display.Lore append value '{"text":""}'
data modify storage du:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.mainhand","color":"gray","italic":"false"}'

scoreboard players add $temp_0 mech_data 9
data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_0","objective":"mech_data"}}," ",{"translate":"mech.lore.mining_speed"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

scoreboard players add $temp_1 mech_data 1
data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_1","objective":"mech_data"}}," ",{"translate":"mech.lore.mining_speed"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

scoreboard players operation $temp_3 mech_data = $temp_2 mech_data
scoreboard players operation $temp_2 mech_data /= $cons.10 du_data
scoreboard players operation $temp_3 mech_data %= $cons.10 du_data
execute if score $temp_3 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_2","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
execute unless score $temp_3 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_2","objective":"mech_data"}},".",{"score":{"name":"$temp_3","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

data modify block -29999999 0 1602 Text1 set value '[{"translate":"mech.lore.added_by","color":"blue","italic":false}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1
