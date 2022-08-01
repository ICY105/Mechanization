
# get count
scoreboard players set #success mechanization.data 0
data modify storage mechanization:temp obj set from storage mechanization:temp list[0]
execute store result score #count mechanization.data run data get storage mechanization:temp list[0].Count

### 2x2
execute if score #count mechanization.data matches 4.. if score #success mechanization.data matches 0 run function mechanization:assembly/machines/compressor/check_recipes_4
execute if score #count mechanization.data matches 4.. if score #success mechanization.data matches 1 run scoreboard players remove #count mechanization.data 4
execute if score #count mechanization.data matches 4.. if score #success mechanization.data matches 1 run scoreboard players remove @s energy.storage 16

### 3x3
execute if score #count mechanization.data matches 9.. if score #success mechanization.data matches 0 run function mechanization:assembly/machines/compressor/check_recipes_9
execute if score #count mechanization.data matches 9.. if score #success mechanization.data matches 1 run scoreboard players remove #count mechanization.data 9
execute if score #count mechanization.data matches 9.. if score #success mechanization.data matches 1 run scoreboard players remove @s energy.storage 16

# store count
execute store result storage mechanization:temp list[0].Count byte 1 run scoreboard players get #count mechanization.data

# loop
data modify block ~ ~ ~ Items append from storage mechanization:temp list[0]
data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:assembly/machines/compressor/check_recipes
