
execute unless data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players remove @s mech_data 1
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify storage du:temp object set from entity @s Item.tag.item
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify storage du:temp object.Slot set value 2b
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify storage du:temp object.Count set value 1b
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify block ~ ~ ~ Items append from storage du:temp object

execute store result score $temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count
scoreboard players set $temp_1 mech_data 64
scoreboard players operation $temp_1 mech_data -= $temp_0 mech_data
execute if score $temp_1 mech_data > @s mech_data run scoreboard players operation $temp_1 mech_data = @s mech_data

scoreboard players operation @s mech_data -= $temp_1 mech_data
scoreboard players operation $temp_1 mech_data += $temp_0 mech_data
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get $temp_1 mech_data
