
execute if entity @s[tag=mechanization.has_block_hitbox] align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox,sort=nearest,limit=1]

execute if entity @s[tag=energy.send] at @s run function energy:v1/api/break_machine
execute if entity @s[tag=!energy.send,tag=energy.receive] at @s run function energy:v1/api/break_machine
execute if entity @s[tag=fluid.tank] at @s run function fluid:v1/api/break_tank

kill @s
kill @e[type=item,distance=..2,nbt={Item:{ tag:{ mechanization:{gui_item:1b} } }}]
playsound minecraft:block.glass.break block @a[distance=..8]
