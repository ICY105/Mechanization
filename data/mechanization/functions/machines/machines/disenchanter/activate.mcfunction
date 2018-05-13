scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[0].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[0].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[1].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[1].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[2].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[2].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[3].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[3].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[4].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[4].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[5].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[5].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[6].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[6].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[7].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[7].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[8].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[8].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.ench[9].id
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.ench[9].lvl
execute if score temp_1 mech_data matches 1.. run summon item ~ ~1 ~ {Tags:["mech_new_book"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:0,lvl:1}]}}}
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].id short 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1.. store result entity @e[type=item,tag=mech_new_book,limit=1] Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get temp_1 mech_data
tag @e[type=item,tag=mech_new_book] remove mech_new_book

data merge block ~ ~ ~ {Items:[]}
scoreboard players remove @s mech_power 2048
playsound minecraft:block.enchantment_table.use ambient @a[distance=..16]
