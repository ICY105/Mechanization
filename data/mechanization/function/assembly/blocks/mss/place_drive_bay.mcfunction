
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.mss_drive_bay"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_drive_bay"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], }

execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~90 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~180 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~270 ~

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:{"translate":"block.mechanization.mss_drive_bay","italic":false}}

function mechanization:base/utils/init_machine
