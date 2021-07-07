
execute store result score $temp_0 mech_data run data get storage du:temp obj.amount

execute if data storage du:temp obj{molten:1b} run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #du:air
execute if data storage du:temp obj{gas:1b} run effect give @s minecraft:levitation


execute if data storage du:temp obj{id:"milk"} run effect clear @s
execute if data storage du:temp obj{id:"experience"} run function mechanization:base/triggers/drink_liquid_experience
