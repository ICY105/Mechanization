
#move enchants
scoreboard players set $temp_0 mech_data 0
data modify storage du:temp list set from block ~ ~ ~ Items[{Slot:12b}].tag.StoredEnchantments
function mechanization:machines/machines/ench_station/add_overenchant_2

#cleanup
execute if score $temp_0 mech_data matches 1 run playsound minecraft:block.enchantment_table.use block @a[distance=..16]
execute if score $temp_0 mech_data matches 1 run item replace block ~ ~ ~ container.14 from block ~ ~ ~ container.10
execute if score $temp_0 mech_data matches 1 run item replace block ~ ~ ~ container.10 with minecraft:air
execute if score $temp_0 mech_data matches 1 run item replace block ~ ~ ~ container.12 with minecraft:air
execute if score $temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 1000
execute if score @s mech_fluid matches 0 run data modify entity @s Item.tag.tank set value {}
