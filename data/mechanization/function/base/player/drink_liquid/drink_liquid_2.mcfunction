
execute store result score #amount mechanization.data run data get storage mechanization:temp obj.storage
execute store result score #temperature mechanization.data run data get storage mechanization:temp obj.temperature

execute if score #temperature mechanization.data matches 1000.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #mechanization:air
execute if score #temperature mechanization.data matches 1000.. run damage @s 10 mechanization:drink_molten_fluid
execute if data storage mechanization:temp obj{gas:1b} run effect give @s minecraft:levitation

execute if data storage mechanization:temp obj{id:"milk"} run effect clear @s
execute if data storage mechanization:temp obj{id:"experience"} run function mechanization:base/player/drink_liquid/drink_liquid_experience
