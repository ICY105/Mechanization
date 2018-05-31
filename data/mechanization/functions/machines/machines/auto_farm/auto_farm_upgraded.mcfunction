#Wheat
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:wheat[age=0] replace minecraft:wheat[age=7]
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:wheat",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 3 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Beetroots
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:beetroots[age=0] replace minecraft:beetroots[age=3]
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:beetroot",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 3 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Potatoes
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:potatoes[age=0] replace minecraft:potatoes[age=7]
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:potato",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 3 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Carrots
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:carrots[age=0] replace minecraft:carrots[age=7]
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:carrot",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 3 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Netherwart
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:nether_wart[age=0] replace minecraft:nether_wart[age=3]
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:nether_wart",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 3 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Cocoa
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:cocoa[age=0] replace minecraft:cocoa[age=2]
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:cocoa_beans",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 3 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Pumpkin
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:air replace minecraft:pumpkin
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:pumpkin",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 1 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Melon
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:air replace minecraft:melon
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:melon",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 5 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Sugar Cane
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~1 ~-4 ~4 ~1 ~4 minecraft:air replace minecraft:sugar_cane
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:sugar_cane",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 1 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop

#Cactus
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run fill ~-4 ~1 ~-4 ~4 ~1 ~4 minecraft:air replace minecraft:cactus
execute if score temp_0 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_crop"],Item:{id:"minecraft:cactus",Count:1b}}
execute if score temp_0 mech_data matches 1.. store result entity @e[tag=mech_new_crop,limit=1] Item.Count int 1 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run tag @e[type=item,tag=mech_new_crop] remove mech_new_crop