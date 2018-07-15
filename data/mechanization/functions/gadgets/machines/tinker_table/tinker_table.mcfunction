data merge entity @s {Fire:32676}

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_pickaxe",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/tool_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_axe",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/tool_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_shovel",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/tool_upgrade

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_sword",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/sword_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:trident",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/trident_upgrade

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_helmet",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/helmet_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_chestplate",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/chestplate_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_leggings",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/leggings_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_boots",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/boots_upgrade

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{modified:3}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/gun_upgrade

execute unless block ~ ~ ~ dropper run function give:mech_machines/machine_frame_tier_2
execute unless block ~ ~ ~ dropper run kill @s
