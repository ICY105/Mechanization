
# init data
data modify storage mechanization:temp obj set value {input:{},output:{}}
data modify storage mechanization:temp obj.input set from block ~ ~ ~ Items[{Slot:1b}]
execute if data block ~ ~ ~ Items[{Slot:7b}] run data modify storage mechanization:temp obj.output set from block ~ ~ ~ Items[{Slot:7b}]
scoreboard players set #success mechanization.data 0

# complete recipes
execute if score @s mechanization.data matches 30.. if data storage mechanization:temp obj.input{id:"minecraft:copper_ingot"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:iron_ingot
execute if score @s mechanization.data matches 30.. if data storage mechanization:temp obj.input{id:"minecraft:copper_ingot"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 30.. if data storage mechanization:temp obj.input{id:"minecraft:copper_ingot"} if data storage mechanization:temp obj.output{id:"minecraft:iron_ingot"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 40.. if data storage mechanization:temp obj.input{id:"minecraft:iron_ingot"} unless data storage mechanization:temp obj.output.id run loot replace block ~ ~ ~ container.7 loot mechanization:base/tin_ingot
execute if score @s mechanization.data matches 40.. if data storage mechanization:temp obj.input{id:"minecraft:iron_ingot"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 40.. if data storage mechanization:temp obj.input{id:"minecraft:iron_ingot"} if data storage mechanization:temp obj.output.tag.smithed.dict.ingot.tin run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.tin unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:gold_ingot
execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.tin unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.tin if data storage mechanization:temp obj.output{id:"minecraft:gold_ingot"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 60.. if data storage mechanization:temp obj.input{id:"minecraft:gold_ingot"} unless data storage mechanization:temp obj.output.id run loot replace block ~ ~ ~ container.7 loot mechanization:base/uranium_ingot
execute if score @s mechanization.data matches 60.. if data storage mechanization:temp obj.input{id:"minecraft:gold_ingot"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 60.. if data storage mechanization:temp obj.input{id:"minecraft:gold_ingot"} if data storage mechanization:temp obj.output.tag.smithed.dict.ingot.uranium run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 70.. if data storage mechanization:temp obj.input{id:"minecraft:amethyst"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:emerald
execute if score @s mechanization.data matches 70.. if data storage mechanization:temp obj.input{id:"minecraft:amethyst"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 70.. if data storage mechanization:temp obj.input{id:"minecraft:amethyst"} if data storage mechanization:temp obj.output{id:"minecraft:emerald"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 100.. if data storage mechanization:temp obj.input{id:"minecraft:blackstone"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:gilded_blackstone
execute if score @s mechanization.data matches 100.. if data storage mechanization:temp obj.input{id:"minecraft:blackstone"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 100.. if data storage mechanization:temp obj.input{id:"minecraft:blackstone"} if data storage mechanization:temp obj.output{id:"minecraft:gilded_blackstone"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 20.. if data storage mechanization:temp obj.input{id:"minecraft:sand"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:suspicious_sand
execute if score @s mechanization.data matches 20.. if data storage mechanization:temp obj.input{id:"minecraft:sand"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 20.. if data storage mechanization:temp obj.input{id:"minecraft:sand"} if data storage mechanization:temp obj.output{id:"minecraft:suspicious_sand"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 20.. if data storage mechanization:temp obj.input{id:"minecraft:gravel"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:suspicious_gravel
execute if score @s mechanization.data matches 20.. if data storage mechanization:temp obj.input{id:"minecraft:gravel"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 20.. if data storage mechanization:temp obj.input{id:"minecraft:gravel"} if data storage mechanization:temp obj.output{id:"minecraft:suspicious_gravel"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 40.. if data storage mechanization:temp obj.input{id:"minecraft:ink_sac"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:glow_ink_sac
execute if score @s mechanization.data matches 40.. if data storage mechanization:temp obj.input{id:"minecraft:ink_sac"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 40.. if data storage mechanization:temp obj.input{id:"minecraft:ink_sac"} if data storage mechanization:temp obj.output{id:"minecraft:glow_ink_sac"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 100.. if data storage mechanization:temp obj.input{id:"minecraft:egg"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:turtle_egg
execute if score @s mechanization.data matches 100.. if data storage mechanization:temp obj.input{id:"minecraft:egg"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 100.. if data storage mechanization:temp obj.input{id:"minecraft:egg"} if data storage mechanization:temp obj.output{id:"minecraft:turtle_egg"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input{id:"minecraft:leather_horse_armor"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:iron_horse_armor
execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input{id:"minecraft:leather_horse_armor"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input{id:"minecraft:iron_horse_armor"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:golden_horse_armor
execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input{id:"minecraft:iron_horse_armor"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input{id:"minecraft:golden_horse_armor"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:diamond_horse_armor
execute if score @s mechanization.data matches 50.. if data storage mechanization:temp obj.input{id:"minecraft:golden_horse_armor"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1

execute if entity @s[tag=mechanization.upgraded] run function mechanization:nuclear/blocks/alchemy_chamber/recipes/output_upgraded

# cleanup
execute if score #success mechanization.data matches 1 run scoreboard players set @s mechanization.data 0
execute if score #success mechanization.data matches 1 run item modify block ~ ~ ~ container.1 mechanization:decrement_count
execute if score #success mechanization.data matches 1 if data storage mechanization:temp obj.output.id run item modify block ~ ~ ~ container.7 mechanization:increment_count
execute if score #success mechanization.data matches 1 if data storage mechanization:temp obj.input{Count:1b} run scoreboard players set @s mechanization.time -1
