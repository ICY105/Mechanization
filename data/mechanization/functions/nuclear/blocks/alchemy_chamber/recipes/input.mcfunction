
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:1b}]
execute if data storage mechanization:temp obj{id:"minecraft:copper_ingot"} run scoreboard players set @s mechanization.time 30
execute if data storage mechanization:temp obj{id:"minecraft:iron_ingot"} run scoreboard players set @s mechanization.time 40
execute if data storage mechanization:temp obj.tag.smithed.dict.ingot.tin run scoreboard players set @s mechanization.time 50
execute if data storage mechanization:temp obj{id:"minecraft:gold_ingot"} run scoreboard players set @s mechanization.time 60
execute if data storage mechanization:temp obj{id:"minecraft:amethyst"} run scoreboard players set @s mechanization.time 70
execute if data storage mechanization:temp obj{id:"minecraft:blackstone"} run scoreboard players set @s mechanization.time 100

execute if data storage mechanization:temp obj{id:"minecraft:sand"} run scoreboard players set @s mechanization.time 20
execute if data storage mechanization:temp obj{id:"minecraft:gravel"} run scoreboard players set @s mechanization.time 20
execute if data storage mechanization:temp obj{id:"minecraft:ink_sac"} run scoreboard players set @s mechanization.time 40
execute if data storage mechanization:temp obj{id:"minecraft:egg"} run scoreboard players set @s mechanization.time 100

execute if data storage mechanization:temp obj{id:"minecraft:leather_horse_armor"} run scoreboard players set @s mechanization.time 50
execute if data storage mechanization:temp obj{id:"minecraft:iron_horse_armor"} run scoreboard players set @s mechanization.time 100
execute if data storage mechanization:temp obj{id:"minecraft:golden_horse_armor"} run scoreboard players set @s mechanization.time 150

execute if entity @s[tag=mechanization.upgraded] run function mechanization:nuclear/blocks/alchemy_chamber/recipes/input_upgraded
