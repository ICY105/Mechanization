
execute unless data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players remove @s mechanization.data 1
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify storage mechanization:temp obj set from entity @s item.tag.item
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify storage mechanization:temp obj.Slot set value 2b
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify storage mechanization:temp obj.Count set value 1b
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify block ~ ~ ~ Items append from storage mechanization:temp obj

execute store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].Count
scoreboard players set #new_count mechanization.data 64
scoreboard players operation #new_count mechanization.data -= #count mechanization.data
execute if score #new_count mechanization.data > @s mechanization.data run scoreboard players operation #new_count mechanization.data = @s mechanization.data

scoreboard players operation @s mechanization.data -= #new_count mechanization.data
scoreboard players operation #new_count mechanization.data += #count mechanization.data
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get #new_count mechanization.data
