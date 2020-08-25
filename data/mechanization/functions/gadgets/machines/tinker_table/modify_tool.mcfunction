
execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeAutoSmelt"]}} ]} run data modify block ~ ~ ~ Items[{Slot:17b}].tag.du_auto_smelt set value 1b
execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeTrash"]}} ]} run data modify block ~ ~ ~ Items[{Slot:17b}].tag.du_trash set value 1b

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount 10
execute store result score temp_1 mech_data if data block ~ ~ ~ Items[{tag:{OreDict:["upgradeDamage"]}}]
scoreboard players operation temp_1 mech_data *= $cons.5 du_data
scoreboard players operation temp_0 mech_data += temp_1 mech_data
execute store result block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount double 0.1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount 10
execute store result score temp_1 mech_data if data block ~ ~ ~ Items[{tag:{OreDict:["upgradeAttackSpeed"]}}]
scoreboard players operation temp_1 mech_data *= $cons.2 du_data
scoreboard players operation temp_0 mech_data += temp_1 mech_data
execute store result block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount double 0.1 run scoreboard players get temp_0 mech_data
