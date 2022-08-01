
execute store result score #amount mechanization.data run data get storage mechanization:temp obj.amount

execute if data storage mechanization:temp obj{molten:1b} run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #mechanization:air
execute if data storage mechanization:temp obj{gas:1b} run effect give @s minecraft:levitation


execute if data storage mechanization:temp obj{id:"milk"} run effect clear @s
execute if data storage mechanization:temp obj{id:"experience"} run function mechanization:base/players/drink_liquid/drink_liquid_experience
