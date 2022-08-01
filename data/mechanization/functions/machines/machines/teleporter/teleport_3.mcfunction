
#move to pos
execute store result entity @s Pos[0] double 1 run scoreboard players get #x mechanization.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #y mechanization.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #z mechanization.data

execute at @s run tp @s ~0.5 ~ ~0.5

#tele players
execute if score #dimension mechanization.data matches 1 at @s in minecraft:overworld positioned as @s run tp @a[tag=mechanization.teleporter.player] ~ ~1 ~
execute if score #dimension mechanization.data matches 2 at @s in minecraft:the_nether positioned as @s run tp @a[tag=mechanization.teleporter.player] ~ ~1 ~
execute if score #dimension mechanization.data matches 3 at @s in minecraft:the_end positioned as @s run tp @a[tag=mechanization.teleporter.player] ~ ~1 ~

#cleanup
tag @a[tag=mechanization.teleporter.player] remove mechanization.teleporter.player
execute at @s run playsound minecraft:block.portal.travel block @a[distance=..16] ~ ~ ~
kill @s
