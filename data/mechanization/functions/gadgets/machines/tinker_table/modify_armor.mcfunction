
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.armor"}].Amount 10
execute store result score temp_1 mech_data if data block ~ ~ ~ Items[{tag:{OreDict:["upgradeArmor"]}}]
execute if score temp_1 mech_data matches 1.. run scoreboard players add temp_0 mech_data 5
execute if score temp_1 mech_data matches 2.. run scoreboard players add temp_0 mech_data 5
execute store result block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.armor"}].Amount double 0.1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.armor_toughness"}].Amount 10
execute store result score temp_1 mech_data if data block ~ ~ ~ Items[{tag:{OreDict:["upgradeArmorToughness"]}}]
execute if score temp_1 mech_data matches 1.. run scoreboard players add temp_0 mech_data 10
execute if score temp_1 mech_data matches 1.. run scoreboard players add temp_0 mech_data 10
execute store result block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.armor_toughness"}].Amount double 0.1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.movement_speed"}].Amount 10
execute store result score temp_1 mech_data if data block ~ ~ ~ Items[{tag:{OreDict:["upgradeSpeed"]}}]
scoreboard players operation temp_0 mech_data += temp_1 mech_data
execute store result block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.movement_speed"}].Amount double 0.1 run scoreboard players get temp_0 mech_data

execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeKnockResist"]}} ]} store success block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.knockbackResistance"}].Amount double 0.5 if entity @s
execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeHealth"]}} ]} store success block ~ ~ ~ Items[{Slot:10b}].tag.AttributeModifiers[{Name:"generic.maxHealth"}].Amount double 5 if entity @s



