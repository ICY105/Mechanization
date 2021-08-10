
data remove storage du:temp obj.tag.Enchantments

#attack damage
scoreboard players set $temp_0 mech_data 10
#attack speed
scoreboard players set $temp_1 mech_data -30
#throw range
scoreboard players set $temp_2 mech_data 0

#base stats
execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.base_stats.attack_damage 10
execute if score $temp_3 mech_data > $temp_0 mech_data run scoreboard players operation $temp_0 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.base_stats.attack_damage 10
execute if score $temp_3 mech_data > $temp_0 mech_data run scoreboard players operation $temp_0 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.base_stats.attack_damage 10
execute if score $temp_3 mech_data > $temp_0 mech_data run scoreboard players operation $temp_0 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.base_stats.attack_damage 10
execute if score $temp_3 mech_data > $temp_0 mech_data run scoreboard players operation $temp_0 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.base_stats.attack_damage 10
execute if score $temp_3 mech_data > $temp_0 mech_data run scoreboard players operation $temp_0 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.base_stats.attack_damage 10
execute if score $temp_3 mech_data > $temp_0 mech_data run scoreboard players operation $temp_0 mech_data = $temp_3 mech_data

execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.base_stats.attack_speed 10
execute unless score $temp_3 mech_data matches 0 if score $temp_3 mech_data > $temp_1 mech_data run scoreboard players operation $temp_1 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.base_stats.attack_speed 10
execute unless score $temp_3 mech_data matches 0 if score $temp_3 mech_data > $temp_1 mech_data run scoreboard players operation $temp_1 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.base_stats.attack_speed 10
execute unless score $temp_3 mech_data matches 0 if score $temp_3 mech_data > $temp_1 mech_data run scoreboard players operation $temp_1 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.base_stats.attack_speed 10
execute unless score $temp_3 mech_data matches 0 if score $temp_3 mech_data > $temp_1 mech_data run scoreboard players operation $temp_1 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.base_stats.attack_speed 10
execute unless score $temp_3 mech_data matches 0 if score $temp_3 mech_data > $temp_1 mech_data run scoreboard players operation $temp_1 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.base_stats.attack_speed 10
execute unless score $temp_3 mech_data matches 0 if score $temp_3 mech_data > $temp_1 mech_data run scoreboard players operation $temp_1 mech_data = $temp_3 mech_data

execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.base_stats.energy_saber_range
execute if score $temp_3 mech_data > $temp_2 mech_data run scoreboard players operation $temp_2 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.base_stats.energy_saber_range
execute if score $temp_3 mech_data > $temp_2 mech_data run scoreboard players operation $temp_2 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.base_stats.energy_saber_range
execute if score $temp_3 mech_data > $temp_2 mech_data run scoreboard players operation $temp_2 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.base_stats.energy_saber_range
execute if score $temp_3 mech_data > $temp_2 mech_data run scoreboard players operation $temp_2 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.base_stats.energy_saber_range
execute if score $temp_3 mech_data > $temp_2 mech_data run scoreboard players operation $temp_2 mech_data = $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.base_stats.energy_saber_range
execute if score $temp_3 mech_data > $temp_2 mech_data run scoreboard players operation $temp_2 mech_data = $temp_3 mech_data

#bonus stats
execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.attack_damage 10
scoreboard players operation $temp_0 mech_data += $temp_3 mech_data

execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.attack_speed 10
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.attack_speed 10
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.attack_speed 10
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.attack_speed 10
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.attack_speed 10
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.attack_speed 10
scoreboard players operation $temp_1 mech_data += $temp_3 mech_data

execute store result score $temp_3 mech_data run data get storage du:temp list[0].tag.mech_upgrade.bonus_stats.energy_saber_range
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[1].tag.mech_upgrade.bonus_stats.energy_saber_range
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[2].tag.mech_upgrade.bonus_stats.energy_saber_range
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[3].tag.mech_upgrade.bonus_stats.energy_saber_range
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[4].tag.mech_upgrade.bonus_stats.energy_saber_range
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data
execute store result score $temp_3 mech_data run data get storage du:temp list[5].tag.mech_upgrade.bonus_stats.energy_saber_range
scoreboard players operation $temp_2 mech_data += $temp_3 mech_data

#apply stats
scoreboard players remove $temp_0 mech_data 10
execute store result storage du:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount double 0.1 run scoreboard players get $temp_0 mech_data
scoreboard players add $temp_0 mech_data 10
execute store result storage du:temp obj.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed",Operation:0}].Amount double 0.1 run scoreboard players get $temp_1 mech_data
execute store result storage du:temp obj.tag.mech_upgrades.saber_range int 1 run scoreboard players get $temp_2 mech_data

#special effects
execute if data storage du:temp list[].tag.mech_upgrade{effect:"fire_aspect"} run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:fire_aspect",lvl:2}
execute if data storage du:temp list[].tag.mech_upgrade{effect:"looting_4"} run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:looting",lvl:4}
execute unless data storage du:temp list[].tag.mech_upgrade{effect:"looting_4"} if data storage du:temp list[].tag.mech_upgrade{effect:"looting_3"} run data modify storage du:temp obj.tag.Enchantments append value {id:"minecraft:looting",lvl:3}

execute if data storage du:temp list[].tag.mech_upgrade{effect:"poison"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_poison","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"wither"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_wither","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"weakness"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_weakness","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"slowness"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_slowness","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"vampiric"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_vampiric","color":"gray","italic":false}'
execute if data storage du:temp list[].tag.mech_upgrade{effect:"illuminating"} run data modify storage du:temp obj.tag.display.Lore append value '{"translate":"mech.lore.upgrade_illuminating","color":"gray","italic":false}'

#add stats lore
data modify storage du:temp obj.tag.display.Lore append value '{"text":""}'
data modify storage du:temp obj.tag.display.Lore append value '{"translate":"item.modifiers.mainhand","color":"gray","italic":"false"}'

scoreboard players operation $temp_3 mech_data = $temp_0 mech_data
scoreboard players operation $temp_0 mech_data /= $cons.10 du_data
scoreboard players operation $temp_3 mech_data %= $cons.10 du_data
execute if score $temp_3 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_0","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
execute unless score $temp_3 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_0","objective":"mech_data"}},".",{"score":{"name":"$temp_3","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

scoreboard players add $temp_1 mech_data 40
scoreboard players operation $temp_3 mech_data = $temp_1 mech_data
scoreboard players operation $temp_1 mech_data /= $cons.10 du_data
scoreboard players operation $temp_3 mech_data %= $cons.10 du_data
execute if score $temp_3 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_1","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
execute unless score $temp_3 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_1","objective":"mech_data"}},".",{"score":{"name":"$temp_3","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_2","objective":"mech_data"}}," ",{"translate":"mech.lore.energy_saber_range"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1

data modify block -29999999 0 1602 Text1 set value '[{"translate":"mech.lore.added_by","color":"blue","italic":false}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1