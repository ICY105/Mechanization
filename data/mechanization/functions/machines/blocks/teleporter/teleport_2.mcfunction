
execute store result score #x mechanization.data run data get entity @s item.tag.dest.x
execute store result score #y mechanization.data run data get entity @s item.tag.dest.y
execute store result score #z mechanization.data run data get entity @s item.tag.dest.z

execute positioned ~ ~1 ~ align xyz run tag @a[dx=0,dy=0,dz=0] add mechanization.teleporter.player

summon minecraft:marker ~ ~ ~ {Tags:["mechanization", "mechanization.teleporter.marker"]}
playsound minecraft:block.portal.travel block @a[distance=..16,tag=!mechanization.teleporter.player] ~ ~ ~
execute as @e[type=minecraft:marker,tag=mechanization.teleporter.marker,limit=1] run function mechanization:machines/blocks/teleporter/teleport_3
