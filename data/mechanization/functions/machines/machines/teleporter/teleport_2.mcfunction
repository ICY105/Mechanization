
execute store result score $temp_1 mech_data run data get entity @s Item.tag.dest.x
execute store result score $temp_2 mech_data run data get entity @s Item.tag.dest.y
execute store result score $temp_3 mech_data run data get entity @s Item.tag.dest.z

execute positioned ~ ~1 ~ align xyz run tag @a[dx=0,dy=0,dz=0] add mech_teleport_mark

summon minecraft:marker ~ ~ ~ {Tags:["mech_teleport_mark"]}
execute as @e[type=minecraft:marker,tag=mech_teleport_mark,limit=1] run function mechanization:machines/machines/teleporter/teleport_3
