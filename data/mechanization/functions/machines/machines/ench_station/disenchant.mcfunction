
#get data
data modify storage du:temp var set from block ~ ~ ~ Items[{Slot:12b}].tag.Enchantments[0].id
function mechanization:machines/machines/ench_station/check_enchant

execute if score $out_0 mechanization.data matches 1 store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:12b}].tag.Enchantments[0].lvl
execute if score $out_0 mechanization.data matches 1 run function mechanization:machines/machines/ench_station/get_enchant_level

scoreboard players operation $temp_2 mechanization.data = $temp_1 mech_data
scoreboard players operation $temp_2 mechanization.data *= $out_1 mech_data
scoreboard players operation $temp_2 mechanization.data *= $cons.25 du_data

execute if score @s mechanization.stored_fluid >= $temp_2 mechanization.data run item replace block ~ ~ ~ container.14 with minecraft:enchanted_book{StoredEnchantments:[]}
execute if score @s mechanization.stored_fluid >= $temp_2 mechanization.data run data modify block ~ ~ ~ Items[{Slot:14b}].tag.StoredEnchantments append from block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0]
execute if score @s mechanization.stored_fluid >= $temp_2 mechanization.data run data remove block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0]
execute if score @s mechanization.stored_fluid >= $temp_2 mechanization.data unless data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0] run data remove block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments
execute if score @s mechanization.stored_fluid >= $temp_2 mechanization.data run item modify block ~ ~ ~ container.12 mechanization:decrement_count
execute if score @s mechanization.stored_fluid >= $temp_2 mechanization.data run scoreboard players operation @s mechanization.stored_fluid -= $temp_2 mech_data
execute if score @s mechanization.stored_fluid >= $temp_2 mechanization.data run playsound minecraft:block.enchantment_table.use block @a[distance=..16]

scoreboard players remove @s mechanization.stored_energy 1000
execute if score @s mechanization.stored_fluid matches 0 run data modify entity @s Item.tag.tank set value {}
