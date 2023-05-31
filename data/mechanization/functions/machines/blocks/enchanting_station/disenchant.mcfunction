
#get data
data modify storage mechanization:temp var set from block ~ ~ ~ Items[{Slot:12b}].tag.Enchantments[0].id
function mechanization:machines/machines/enchanting_station/check_enchant

execute if score #valid mechanization.data matches 1 store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:12b}].tag.Enchantments[0].lvl
execute if score #valid mechanization.data matches 1 run function mechanization:machines/machines/enchanting_station/get_enchant_level

scoreboard players operation #total_cost mechanization.data = $temp_1 mechanization.data
scoreboard players operation #total_cost mechanization.data *= $out_1 mechanization.data
scoreboard players operation #total_cost mechanization.data *= #cons.25 mechanization.data

execute if score @s mechanization.fluid.0 >= #total_cost mechanization.data run item replace block ~ ~ ~ container.14 with minecraft:enchanted_book{StoredEnchantments:[]}
execute if score @s mechanization.fluid.0 >= #total_cost mechanization.data run data modify block ~ ~ ~ Items[{Slot:14b}].tag.StoredEnchantments append from block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0]
execute if score @s mechanization.fluid.0 >= #total_cost mechanization.data run data remove block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0]
execute if score @s mechanization.fluid.0 >= #total_cost mechanization.data unless data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0] run data remove block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments
execute if score @s mechanization.fluid.0 >= #total_cost mechanization.data run item modify block ~ ~ ~ container.12 mechanization:decrement_count
execute if score @s mechanization.fluid.0 >= #total_cost mechanization.data run scoreboard players operation @s mechanization.fluid.0 -= #total_cost mechanization.data
execute if score @s mechanization.fluid.0 >= #total_cost mechanization.data run playsound minecraft:block.enchantment_table.use block @a[distance=..16]

scoreboard players remove @s energy.storage 1000
execute if score @s mechanization.fluid.0 matches 0 run data modify entity @s Item.tag.tank set value {}
