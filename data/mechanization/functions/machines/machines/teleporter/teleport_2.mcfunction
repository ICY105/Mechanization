
execute store result score #x mechanization.data run data get entity @s Item.tag.dest.x
execute store result score #y mechanization.data run data get entity @s Item.tag.dest.y
execute store result score #z mechanization.data run data get entity @s Item.tag.dest.z

execute positioned ~ ~1 ~ align xyz run tag @a[dx=0,dy=0,dz=0] add mechanization.teleporter.player

summon minecraft:marker ~ ~ ~ {Tags:["mechanization.teleporter.marker"]}
execute as @e[type=minecraft:marker,tag=mechanization.teleporter.marker,limit=1] run function mechanization:machines/machines/teleporter/teleport_3
