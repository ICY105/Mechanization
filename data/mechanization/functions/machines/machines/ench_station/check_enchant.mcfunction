
#init output
#0: any
#1: weapons
#2: tools
#3: armor
#4: helmet
#5: chestplate
#6: leggings
#7: boots
#8: bow
#9: crossbow
#10: swords
#11: trident
#12: fishing rod
scoreboard players set $temp_1 mech_data -1
#cost multiplier
scoreboard players set $out_1 mech_data -1
#max lvl
scoreboard players set $out_2 mech_data -1
#max overenchant lvl
scoreboard players set $out_3 mech_data -1

#set output
execute if data storage du:temp {var:"minecraft:unbreaking"} run function mechanization:machines/machines/ench_station/enchantments/unbreaking
execute if data storage du:temp {var:"minecraft:mending"} run function mechanization:machines/machines/ench_station/enchantments/mending
execute if data storage du:temp {var:"minecraft:vanishing_curse"} run function mechanization:machines/machines/ench_station/enchantments/vanishing_curse

execute if data storage du:temp {var:"minecraft:sharpness"} run function mechanization:machines/machines/ench_station/enchantments/sharpness
execute if data storage du:temp {var:"minecraft:smite"} run function mechanization:machines/machines/ench_station/enchantments/smite
execute if data storage du:temp {var:"minecraft:bane_of_arthopods"} run function mechanization:machines/machines/ench_station/enchantments/bane_of_arthopods
execute if data storage du:temp {var:"minecraft:knockback"} run function mechanization:machines/machines/ench_station/enchantments/knockback
execute if data storage du:temp {var:"minecraft:fire_aspect"} run function mechanization:machines/machines/ench_station/enchantments/fire_aspect
execute if data storage du:temp {var:"minecraft:looting"} run function mechanization:machines/machines/ench_station/enchantments/looting

execute if data storage du:temp {var:"minecraft:efficiency"} run function mechanization:machines/machines/ench_station/enchantments/efficiency
execute if data storage du:temp {var:"minecraft:fortune"} run function mechanization:machines/machines/ench_station/enchantments/fortune
execute if data storage du:temp {var:"minecraft:silk_touch"} run function mechanization:machines/machines/ench_station/enchantments/silk_touch

execute if data storage du:temp {var:"minecraft:protection"} run function mechanization:machines/machines/ench_station/enchantments/protection
execute if data storage du:temp {var:"minecraft:fire_protection"} run function mechanization:machines/machines/ench_station/enchantments/fire_protection
execute if data storage du:temp {var:"minecraft:blast_protection"} run function mechanization:machines/machines/ench_station/enchantments/blast_protection
execute if data storage du:temp {var:"minecraft:projectile_protection"} run function mechanization:machines/machines/ench_station/enchantments/projectile_protection
execute if data storage du:temp {var:"minecraft:thorns"} run function mechanization:machines/machines/ench_station/enchantments/thorns
execute if data storage du:temp {var:"minecraft:binding_curse"} run function mechanization:machines/machines/ench_station/enchantments/binding_curse

execute if data storage du:temp {var:"minecraft:respiration"} run function mechanization:machines/machines/ench_station/enchantments/respiration
execute if data storage du:temp {var:"minecraft:aqua_affinity"} run function mechanization:machines/machines/ench_station/enchantments/aqua_affinity

execute if data storage du:temp {var:"minecraft:feather_falling"} run function mechanization:machines/machines/ench_station/enchantments/feather_falling
execute if data storage du:temp {var:"minecraft:depth_strider"} run function mechanization:machines/machines/ench_station/enchantments/depth_strider
execute if data storage du:temp {var:"minecraft:frost_walker"} run function mechanization:machines/machines/ench_station/enchantments/frost_walker
execute if data storage du:temp {var:"minecraft:soul_speed"} run function mechanization:machines/machines/ench_station/enchantments/soul_speed

execute if data storage du:temp {var:"minecraft:power"} run function mechanization:machines/machines/ench_station/enchantments/power
execute if data storage du:temp {var:"minecraft:punch"} run function mechanization:machines/machines/ench_station/enchantments/punch
execute if data storage du:temp {var:"minecraft:infinity"} run function mechanization:machines/machines/ench_station/enchantments/infinity
execute if data storage du:temp {var:"minecraft:flame"} run function mechanization:machines/machines/ench_station/enchantments/flame

execute if data storage du:temp {var:"minecraft:multishot"} run function mechanization:machines/machines/ench_station/enchantments/multishot
execute if data storage du:temp {var:"minecraft:piercing"} run function mechanization:machines/machines/ench_station/enchantments/piercing
execute if data storage du:temp {var:"minecraft:quick_charge"} run function mechanization:machines/machines/ench_station/enchantments/quick_charge

execute if data storage du:temp {var:"minecraft:sweeping_edge"} run function mechanization:machines/machines/ench_station/enchantments/sweeping_edge

execute if data storage du:temp {var:"minecraft:impaling"} run function mechanization:machines/machines/ench_station/enchantments/impaling
execute if data storage du:temp {var:"minecraft:riptide"} run function mechanization:machines/machines/ench_station/enchantments/riptide
execute if data storage du:temp {var:"minecraft:channeling"} run function mechanization:machines/machines/ench_station/enchantments/channeling
execute if data storage du:temp {var:"minecraft:loyalty"} run function mechanization:machines/machines/ench_station/enchantments/loyalty

execute if data storage du:temp {var:"minecraft:luck_of_the_sea"} run function mechanization:machines/machines/ench_station/enchantments/luck_of_the_sea
execute if data storage du:temp {var:"minecraft:lure"} run function mechanization:machines/machines/ench_station/enchantments/lure

#get valid
scoreboard players set $out_0 mech_data 0

execute if score $temp_1 mech_data matches 0 if score $in_0 mech_data matches 0.. run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 1 if score $in_0 mech_data matches 1..2 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 2 if score $in_0 mech_data matches 3..5 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 3 if score $in_0 mech_data matches 6..9 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 4 if score $in_0 mech_data matches 6 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 5 if score $in_0 mech_data matches 7 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 6 if score $in_0 mech_data matches 8 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 7 if score $in_0 mech_data matches 9 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 8 if score $in_0 mech_data matches 10 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 9 if score $in_0 mech_data matches 11 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 10 if score $in_0 mech_data matches 1 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 11 if score $in_0 mech_data matches 12 run scoreboard players set $out_0 mech_data 1
execute if score $temp_1 mech_data matches 12 if score $in_0 mech_data matches 13 run scoreboard players set $out_0 mech_data 1
