scoreboard players set temp_5 du_data 0
scoreboard players set temp_4 du_data 0
execute if entity @s[nbt={SelectedItem:{ tag: {Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]} }}] run scoreboard players set temp_5 du_data 1
execute if entity @s[nbt={SelectedItem:{ tag: {Enchantments: [{lvl: 2s, id: "minecraft:unbreaking"}]} }}] run scoreboard players set temp_5 du_data 2
execute if entity @s[nbt={SelectedItem:{ tag: {Enchantments: [{lvl: 3s, id: "minecraft:unbreaking"}]} }}] run scoreboard players set temp_5 du_data 3

execute if score temp_5 du_data matches 1..3 run scoreboard players set in_0 du_data 100
execute if score temp_5 du_data matches 1..3 run function du:math/random
execute if score temp_5 du_data matches 1 if score out_0 du_data matches ..50 run scoreboard players set temp_4 du_data 1
execute if score temp_5 du_data matches 2 if score out_0 du_data matches ..66 run scoreboard players set temp_4 du_data 1
execute if score temp_5 du_data matches 3 if score out_0 du_data matches ..75 run scoreboard players set temp_4 du_data 1


scoreboard players set in_0 du_data 1

execute if score temp_4 du_data matches 0 if score @s du_wpick matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_gpick matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_spick matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_ipick matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_dpick matches 1.. run function du:player/durability/damage_held_item

execute if score temp_4 du_data matches 0 if score @s du_waxe matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_gaxe matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_saxe matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_iaxe matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_daxe matches 1.. run function du:player/durability/damage_held_item

execute if score temp_4 du_data matches 0 if score @s du_wshovel matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_gshovel matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_sshovel matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_ishovel matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_dshovel matches 1.. run function du:player/durability/damage_held_item

execute if score temp_4 du_data matches 0 if score @s du_whoe matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_ghoe matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_shoe matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_ihoe matches 1.. run function du:player/durability/damage_held_item
execute if score temp_4 du_data matches 0 if score @s du_dhoe matches 1.. run function du:player/durability/damage_held_item

execute if score temp_4 du_data matches 0 if entity @s[tag=du_hit_entity] run function du:player/durability/damage_held_item
