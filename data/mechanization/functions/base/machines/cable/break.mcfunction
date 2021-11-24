
execute if entity @s[tag=mech_copper_cable] run loot spawn ~ ~ ~ loot mechanization:base/copper_cable
setblock ~ ~ ~ minecraft:air replace
kill @s

execute as @e[type=item_frame,tag=mech_cable,distance=0.5..1.3] run function mechanization:base/machines/cable/break_cable
execute positioned ~ ~0.9 ~ as @e[type=#mechanization:valid_block_entities,distance=0.5..1.3,scores={mech_power=-2147483648..}] run function mechanization:base/machines/cable/break_machine
