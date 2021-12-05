
#check dimension
scoreboard players set $temp_0 mech_data 0

data modify storage du:temp var set from entity @s Item.tag.dest.dimension
execute store result score $temp_1 mech_data run data modify storage du:temp var set value "minecraft:overworld"
execute if score $temp_1 mech_data matches 0 run scoreboard players set $temp_0 mech_data 1

data modify storage du:temp var set from entity @s Item.tag.dest.dimension
execute store result score $temp_1 mech_data run data modify storage du:temp var set value "minecraft:the_nether"
execute if score $temp_1 mech_data matches 0 run scoreboard players set $temp_0 mech_data 2

data modify storage du:temp var set from entity @s Item.tag.dest.dimension
execute store result score $temp_1 mech_data run data modify storage du:temp var set value "minecraft:the_end"
execute if score $temp_1 mech_data matches 0 run scoreboard players set $temp_0 mech_data 3

#trigger teleport
execute if score $temp_0 mech_data matches 0 positioned ~ ~1 ~ align xyz run title @a[dx=0,dy=0,dz=0] actionbar [{"translate":"mech.block.teleporter.no_destination","color":"green"}]

execute if score $temp_0 mech_data matches 1.. run scoreboard players add @s du_data 1
execute if score $temp_0 mech_data matches 1.. if score @s du_data matches 1 run playsound mechanization:machines.teleporter_charging block @a ~ ~ ~ 1 1
execute if score $temp_0 mech_data matches 1.. if score @s du_data matches 5 run function mechanization:machines/machines/teleporter/teleport_2
