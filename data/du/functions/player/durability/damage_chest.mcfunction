scoreboard players set temp_5 du_data 0
scoreboard players set temp_4 du_data 0
execute if entity @s[nbt={Inventory:[ {Slot: 100b, tag: {Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}]}} ]}] run scoreboard players set temp_5 du_data 1
execute if entity @s[nbt={Inventory:[ {Slot: 100b, tag: {Enchantments: [{lvl: 2s, id: "minecraft:unbreaking"}]}} ]}] run scoreboard players set temp_5 du_data 2
execute if entity @s[nbt={Inventory:[ {Slot: 100b, tag: {Enchantments: [{lvl: 3s, id: "minecraft:unbreaking"}]}} ]}] run scoreboard players set temp_5 du_data 3

execute if score temp_5 du_data matches 1..3 run scoreboard players set in_0 du_data 100
execute if score temp_5 du_data matches 1..3 run function du:math/random
execute if score temp_5 du_data matches 1 if score out_0 du_data matches ..19 run scoreboard players set temp_4 du_data 1
execute if score temp_5 du_data matches 2 if score out_0 du_data matches ..35 run scoreboard players set temp_4 du_data 1
execute if score temp_5 du_data matches 3 if score out_0 du_data matches ..42 run scoreboard players set temp_4 du_data 1

scoreboard players set in_0 du_data 102
scoreboard players set temp_0 du_data 40
execute if score temp_4 du_data matches 0 run function du:player/durability/damage_armor

execute if score temp_4 du_data matches 0 if score temp_2 du_data matches ..0 run replaceitem entity @s armor.chest air
execute if score temp_4 du_data matches 0 if score temp_2 du_data matches ..0 run playsound minecraft:item.shield.break player @s