
#get book & lapis counts
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count

#create enchanted book and move enchanted
execute if score temp_1 mech_data matches 3.. run replaceitem block ~ ~ ~ container.4 minecraft:enchanted_book
execute if score temp_1 mech_data matches 3.. run data modify block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments set value []
execute if score temp_1 mech_data matches 3.. run data modify block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments append from block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[0]
execute if score temp_1 mech_data matches 3.. run data remove block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[0]
execute if score temp_1 mech_data matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{}]}}]} run data remove block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments
execute if score temp_1 mech_data matches 3.. store success block ~ ~ ~ Items[{Slot:0b}].Slot byte 3 if entity @s

#Effects
execute if score temp_1 mech_data matches 3.. run playsound minecraft:block.enchantment_table.use block @a
execute if score temp_1 mech_data matches 3.. run scoreboard players remove @s mech_power 2048

#set book & lapis counts
execute if score temp_1 mech_data matches 3.. run scoreboard players remove temp_0 mech_data 1
execute if score temp_1 mech_data matches 3.. run scoreboard players remove temp_1 mech_data 3
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get temp_0 mech_data
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get temp_1 mech_data
