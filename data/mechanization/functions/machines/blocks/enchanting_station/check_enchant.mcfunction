
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
scoreboard players set #enchant_type mechanization.data -1
#cost multiplier out_1
scoreboard players set #cost mechanization.data -1
#max lvl out_2
scoreboard players set #max_lvl mechanization.data -1
#max overenchant lvl out_3
scoreboard players set #max_over_lvl mechanization.data -1

#set output
execute if data storage mechanization:temp {var:"minecraft:unbreaking"} run function mechanization:machines/blocks/enchanting_station/enchantments/unbreaking
execute if data storage mechanization:temp {var:"minecraft:mending"} run function mechanization:machines/blocks/enchanting_station/enchantments/mending
execute if data storage mechanization:temp {var:"minecraft:vanishing_curse"} run function mechanization:machines/blocks/enchanting_station/enchantments/vanishing_curse
execute if data storage mechanization:temp {var:"minecraft:binding_curse"} run function mechanization:machines/blocks/enchanting_station/enchantments/binding_curse

execute if data storage mechanization:temp {var:"minecraft:sharpness"} run function mechanization:machines/blocks/enchanting_station/enchantments/sharpness
execute if data storage mechanization:temp {var:"minecraft:smite"} run function mechanization:machines/blocks/enchanting_station/enchantments/smite
execute if data storage mechanization:temp {var:"minecraft:bane_of_arthropods"} run function mechanization:machines/blocks/enchanting_station/enchantments/bane_of_arthropods
execute if data storage mechanization:temp {var:"minecraft:knockback"} run function mechanization:machines/blocks/enchanting_station/enchantments/knockback
execute if data storage mechanization:temp {var:"minecraft:fire_aspect"} run function mechanization:machines/blocks/enchanting_station/enchantments/fire_aspect
execute if data storage mechanization:temp {var:"minecraft:looting"} run function mechanization:machines/blocks/enchanting_station/enchantments/looting
execute if data storage mechanization:temp {var:"minecraft:sweeping"} run function mechanization:machines/blocks/enchanting_station/enchantments/sweeping

execute if data storage mechanization:temp {var:"minecraft:efficiency"} run function mechanization:machines/blocks/enchanting_station/enchantments/efficiency
execute if data storage mechanization:temp {var:"minecraft:fortune"} run function mechanization:machines/blocks/enchanting_station/enchantments/fortune
execute if data storage mechanization:temp {var:"minecraft:silk_touch"} run function mechanization:machines/blocks/enchanting_station/enchantments/silk_touch

execute if data storage mechanization:temp {var:"minecraft:protection"} run function mechanization:machines/blocks/enchanting_station/enchantments/protection
execute if data storage mechanization:temp {var:"minecraft:fire_protection"} run function mechanization:machines/blocks/enchanting_station/enchantments/fire_protection
execute if data storage mechanization:temp {var:"minecraft:blast_protection"} run function mechanization:machines/blocks/enchanting_station/enchantments/blast_protection
execute if data storage mechanization:temp {var:"minecraft:projectile_protection"} run function mechanization:machines/blocks/enchanting_station/enchantments/projectile_protection
execute if data storage mechanization:temp {var:"minecraft:thorns"} run function mechanization:machines/blocks/enchanting_station/enchantments/thorns

execute if data storage mechanization:temp {var:"minecraft:respiration"} run function mechanization:machines/blocks/enchanting_station/enchantments/respiration
execute if data storage mechanization:temp {var:"minecraft:aqua_affinity"} run function mechanization:machines/blocks/enchanting_station/enchantments/aqua_affinity

execute if data storage mechanization:temp {var:"minecraft:feather_falling"} run function mechanization:machines/blocks/enchanting_station/enchantments/feather_falling
execute if data storage mechanization:temp {var:"minecraft:depth_strider"} run function mechanization:machines/blocks/enchanting_station/enchantments/depth_strider
execute if data storage mechanization:temp {var:"minecraft:frost_walker"} run function mechanization:machines/blocks/enchanting_station/enchantments/frost_walker
execute if data storage mechanization:temp {var:"minecraft:soul_speed"} run function mechanization:machines/blocks/enchanting_station/enchantments/soul_speed

execute if data storage mechanization:temp {var:"minecraft:swift_sneak"} run function mechanization:machines/blocks/enchanting_station/enchantments/swift_sneak

execute if data storage mechanization:temp {var:"minecraft:power"} run function mechanization:machines/blocks/enchanting_station/enchantments/power
execute if data storage mechanization:temp {var:"minecraft:punch"} run function mechanization:machines/blocks/enchanting_station/enchantments/punch
execute if data storage mechanization:temp {var:"minecraft:infinity"} run function mechanization:machines/blocks/enchanting_station/enchantments/infinity
execute if data storage mechanization:temp {var:"minecraft:flame"} run function mechanization:machines/blocks/enchanting_station/enchantments/flame

execute if data storage mechanization:temp {var:"minecraft:multishot"} run function mechanization:machines/blocks/enchanting_station/enchantments/multishot
execute if data storage mechanization:temp {var:"minecraft:piercing"} run function mechanization:machines/blocks/enchanting_station/enchantments/piercing
execute if data storage mechanization:temp {var:"minecraft:quick_charge"} run function mechanization:machines/blocks/enchanting_station/enchantments/quick_charge

execute if data storage mechanization:temp {var:"minecraft:impaling"} run function mechanization:machines/blocks/enchanting_station/enchantments/impaling
execute if data storage mechanization:temp {var:"minecraft:riptide"} run function mechanization:machines/blocks/enchanting_station/enchantments/riptide
execute if data storage mechanization:temp {var:"minecraft:channeling"} run function mechanization:machines/blocks/enchanting_station/enchantments/channeling
execute if data storage mechanization:temp {var:"minecraft:loyalty"} run function mechanization:machines/blocks/enchanting_station/enchantments/loyalty

execute if data storage mechanization:temp {var:"minecraft:luck_of_the_sea"} run function mechanization:machines/blocks/enchanting_station/enchantments/luck_of_the_sea
execute if data storage mechanization:temp {var:"minecraft:lure"} run function mechanization:machines/blocks/enchanting_station/enchantments/lure

#get valid
scoreboard players set #valid mechanization.data 0

execute if score #enchant_type mechanization.data matches 0 if score #item_type mechanization.data matches 0.. run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 1 if score #item_type mechanization.data matches 1..2 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 2 if score #item_type mechanization.data matches 3..5 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 3 if score #item_type mechanization.data matches 6..9 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 4 if score #item_type mechanization.data matches 6 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 5 if score #item_type mechanization.data matches 7 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 6 if score #item_type mechanization.data matches 8 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 7 if score #item_type mechanization.data matches 9 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 8 if score #item_type mechanization.data matches 10 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 9 if score #item_type mechanization.data matches 11 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 10 if score #item_type mechanization.data matches 1 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 11 if score #item_type mechanization.data matches 12 run scoreboard players set #valid mechanization.data 1
execute if score #enchant_type mechanization.data matches 12 if score #item_type mechanization.data matches 13 run scoreboard players set #valid mechanization.data 1
