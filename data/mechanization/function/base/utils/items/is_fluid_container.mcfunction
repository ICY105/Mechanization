
scoreboard players set #out mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:bucket"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:glass_bottle"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:bowl"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:water_bucket"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:lava_bucket"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:milk_bucket"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:powdered_snow_bucket"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:mushroom_stew"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:rabbit_stew"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:beetroot_soup"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:honey_bottle"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:potion"}.components."minecraft:potion_contents"{potion:"minecraft:water"} run scoreboard players set #out mechanization.data 1
execute if data storage mechanization:temp obj.components."minecraft:custom_data".fluid run scoreboard players set #out mechanization.data 1
