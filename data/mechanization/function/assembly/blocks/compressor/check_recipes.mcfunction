
# get count
scoreboard players set #success mechanization.data 0
data modify storage mechanization:temp obj set from storage mechanization:temp list[0]
execute store result score #count mechanization.data run data get storage mechanization:temp list[0].count

setblock -30000000 0 3201 minecraft:yellow_shulker_box replace

### 2x2
execute if score #count mechanization.data matches 4.. if score #success mechanization.data matches 0 run function mechanization:assembly/blocks/compressor/check_recipes_4
execute if score #success mechanization.data matches 1 run scoreboard players remove #count mechanization.data 4
execute if score #success mechanization.data matches 1 run scoreboard players remove @s energy.storage 16
execute if score #success mechanization.data matches 1 run scoreboard players set #success mechanization.data 2

### 3x3
execute if score #count mechanization.data matches 9.. if score #success mechanization.data matches 0 run function mechanization:assembly/blocks/compressor/check_recipes_9
execute if score #success mechanization.data matches 1 run scoreboard players remove #count mechanization.data 9
execute if score #success mechanization.data matches 1 run scoreboard players remove @s energy.storage 16

# insert or drop
scoreboard players set #slots mechanization.data 0
execute if block ^ ^ ^1 #mechanization:inv_5 run scoreboard players set #slots mechanization.data 5
execute if block ^ ^ ^1 #mechanization:inv_9 run scoreboard players set #slots mechanization.data 9
execute if block ^ ^ ^1 #mechanization:inv_27 run scoreboard players set #slots mechanization.data 27

execute if score #slots mechanization.data matches 1.. store result score #used_slots mechanization.data run data get block ^ ^ ^1 Items
execute if score #slots mechanization.data matches 1.. run scoreboard players add #used_slots mechanization.data 1
execute if score #slots mechanization.data matches 1.. if score #used_slots mechanization.data < #slots mechanization.data run loot insert ^ ^ ^1 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score #slots mechanization.data matches 1.. if score #used_slots mechanization.data >= #slots mechanization.data run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score #slots mechanization.data matches ..0 run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

# store count
execute if score #count mechanization.data matches ..0 run data modify storage mechanization:temp list[0].id set value "minecraft:air"
execute if score #count mechanization.data matches 1.. store result storage mechanization:temp list[0].count byte 1 run scoreboard players get #count mechanization.data

# loop
data modify block ~ ~ ~ Items append from storage mechanization:temp list[0]
data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:assembly/blocks/compressor/check_recipes
