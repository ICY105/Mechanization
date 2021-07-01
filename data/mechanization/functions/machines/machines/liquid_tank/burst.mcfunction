

scoreboard players set @s mech_fluid 0
data remove entity @s Item.tag.tank
playsound minecraft:entity.generic.explode block @a[distance=..16] 
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1
