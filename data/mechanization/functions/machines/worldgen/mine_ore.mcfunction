
execute store result score temp_0 mech_data run kill @e[type=item,distance=..0.75,nbt={Item:{id:"minecraft:petrified_oak_slab",Count:1b},Age:0s}]

execute if score temp_0 mech_data matches 1 run function give:mech_machines/copper_ore
execute unless block ~ ~ ~ water if score temp_0 mech_data matches 2 run function give:mech_machines/tin_ore
execute if block ~ ~ ~ water if score temp_0 mech_data matches 2 run function give:mech_machines/titanium_ore

execute if block ~ ~ ~ water run setblock ~ ~ ~ air
