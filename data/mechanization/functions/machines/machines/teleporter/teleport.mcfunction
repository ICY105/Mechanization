
# check dimension
scoreboard players set #dimension mechanization.data 0

data modify storage mechanization:temp var set from entity @s Item.tag.dest.dimension
execute store result score #failed mechanization.data run data modify storage mechanization:temp var set value "minecraft:overworld"
execute if score #failed mechanization.data matches 0 run scoreboard players set #dimension mechanization.data 1

data modify storage mechanization:temp var set from entity @s Item.tag.dest.dimension
execute store result score #failed mechanization.data run data modify storage mechanization:temp var set value "minecraft:the_nether"
execute if score #failed mechanization.data matches 0 run scoreboard players set #dimension mechanization.data 2

data modify storage mechanization:temp var set from entity @s Item.tag.dest.dimension
execute store result score #failed mechanization.data run data modify storage mechanization:temp var set value "minecraft:the_end"
execute if score #failed mechanization.data matches 0 run scoreboard players set #dimension mechanization.data 3

# trigger teleport
execute if score #dimension mechanization.data matches 0 positioned ~ ~1 ~ align xyz run title @a[dx=0,dy=0,dz=0] actionbar [{"translate":"mech.block.teleporter.no_destination","color":"green"}]

execute if score #dimension mechanization.data matches 1.. run scoreboard players add @s mechanization.time 1
execute if score #dimension mechanization.data matches 1.. if score @s mechanization.time matches 1 run playsound minecraft:block.portal.trigger block @a[distance=..16] ~ ~ ~
execute if score #dimension mechanization.data matches 1.. if score @s mechanization.time matches 5 run function mechanization:machines/machines/teleporter/teleport_2
