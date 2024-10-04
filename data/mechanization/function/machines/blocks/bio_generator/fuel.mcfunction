
scoreboard players set @s mechanization.data 0
scoreboard players set @s mechanization.time 0

# get duration
execute if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel_seed run scoreboard players add @s mechanization.time 1
execute if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel_crop run scoreboard players add @s mechanization.time 1
execute if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel_flower run scoreboard players add @s mechanization.time 1
execute if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel_food run scoreboard players add @s mechanization.time 1
execute if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel_fungus run scoreboard players add @s mechanization.time 1
execute if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel_plant run scoreboard players add @s mechanization.time 1
execute if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel_golden run scoreboard players add @s mechanization.time 1
execute if items block ~ ~ ~ container.* #mechanization:bio_generator/fuel_meat run scoreboard players add @s mechanization.time 1

# get fuel
scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.0 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.0 mechanization:decrement_count

scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:1b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.1 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.1 mechanization:decrement_count

scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.2 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.2 mechanization:decrement_count

scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:3b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.3 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.3 mechanization:decrement_count

scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:4b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.4 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.4 mechanization:decrement_count

scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:5b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.5 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.5 mechanization:decrement_count

scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:6b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.6 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.6 mechanization:decrement_count

scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:7b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.7 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.7 mechanization:decrement_count

scoreboard players set #count mechanization.data 2
execute if entity @s[tag=mechanization.upgraded] store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:8b}].count
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel_1kw run scoreboard players add @s mechanization.data 1
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel_2kw run scoreboard players add @s mechanization.data 2
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel_3kw run scoreboard players add @s mechanization.data 3
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel_4kw run scoreboard players add @s mechanization.data 4
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel_5kw run scoreboard players add @s mechanization.data 5
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel_6kw run scoreboard players add @s mechanization.data 6
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel_7kw run scoreboard players add @s mechanization.data 7
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel_8kw run scoreboard players add @s mechanization.data 8
execute if score #count mechanization.data matches 2.. if items block ~ ~ ~ container.8 #mechanization:bio_generator/fuel run item modify block ~ ~ ~ container.8 mechanization:decrement_count

# fuel multipliers
scoreboard players operation @s mechanization.data *= #machines.cf.bio_generator.power mechanization.data
scoreboard players operation @s mechanization.data /= #cons.100 mechanization.data

scoreboard players operation @s[tag=mechanization.upgraded.nether] mechanization.data *= #cons.25 mechanization.data
scoreboard players operation @s[tag=mechanization.upgraded.nether] mechanization.data /= #cons.100 mechanization.data

scoreboard players operation @s[tag=mechanization.upgraded.ender] mechanization.time *= #cons.50 mechanization.data
scoreboard players operation @s[tag=mechanization.upgraded.ender] mechanization.time /= #cons.100 mechanization.data

execute if score @s mechanization.data matches 0 run scoreboard players set @s mechanization.time 0
