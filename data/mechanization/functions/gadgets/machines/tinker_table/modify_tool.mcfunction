
execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeAutoSmelt"]}} ]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.du_auto_smelt set value 1b
execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeTrash"]}} ]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.du_trash set value 1b

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount 10
execute store result score temp_1 mech_data if data block ~ ~ ~ Items[{tag:{OreDict:["upgradeDamage"]}}]
scoreboard players operation temp_1 mech_data *= $cons.5 du_data
scoreboard players operation temp_0 mech_data += temp_1 mech_data
execute store result block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount double 0.1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount 10
execute store result score temp_1 mech_data if data block ~ ~ ~ Items[{tag:{OreDict:["upgradeAttackSpeed"]}}]
scoreboard players operation temp_1 mech_data *= $cons.3 du_data
scoreboard players operation temp_0 mech_data += temp_1 mech_data
execute store result block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount double 0.1 run scoreboard players get temp_0 mech_data

#add lore
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append value '{"text":""}'
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append value '{"translate":"item.modifiers.mainhand","color":"gray","italic":"false"}'

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount 10
scoreboard players add temp_0 mech_data 10
scoreboard players operation temp_1 mech_data = temp_0 mech_data
scoreboard players operation temp_0 mech_data /= $cons.10 du_data
scoreboard players operation temp_1 mech_data %= $cons.10 du_data
execute if score temp_1 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"temp_0","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
execute unless score temp_1 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"temp_0","objective":"mech_data"}},".",{"score":{"name":"temp_1","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append from block -29999999 0 1602 Text1

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount 9.999
scoreboard players set temp_0 mech_data 40
scoreboard players operation temp_0 mech_data += temp_1 mech_data
scoreboard players operation temp_1 mech_data = temp_0 mech_data
scoreboard players operation temp_0 mech_data /= $cons.10 du_data
scoreboard players operation temp_1 mech_data %= $cons.10 du_data
execute if score temp_1 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"temp_0","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
execute unless score temp_1 mech_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"temp_0","objective":"mech_data"}},".",{"score":{"name":"temp_1","objective":"mech_data"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append from block -29999999 0 1602 Text1

