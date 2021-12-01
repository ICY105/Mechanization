
scoreboard players set $temp_0 mechanization.data 0
data modify storage du:temp obj set from storage du:temp list[0]

#check for empty fluid IO slots
execute if score $temp_0 mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:3b}] unless data storage du:temp list[{Slot:3b}] run scoreboard players set $temp_0 mechanization.data 3
execute if score $temp_0 mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:6b}] unless data storage du:temp list[{Slot:6b}] run scoreboard players set $temp_0 mechanization.data 6

#check for fuel & empty fuel slot
execute if data storage du:temp obj{id:"minecraft:stick"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:oak_planks"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:birch_planks"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:spruce_planks"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:jungle_planks"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:acacia_planks"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:dark_oak_planks"} run scoreboard players set $temp_0 mechanization.data 10

execute if data storage du:temp obj{id:"minecraft:coal"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:charcoal"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:coal_block"} run scoreboard players set $temp_0 mechanization.data 10
execute if data storage du:temp obj{id:"minecraft:blaze_rod"} run scoreboard players set $temp_0 mechanization.data 10

execute if score $temp_0 mechanization.data matches 10 if data block ~ ~ ~ Items[{Slot:10b}] run scoreboard players set $temp_0 mechanization.data 0

#move item
execute if score $temp_0 mechanization.data matches 0 run data modify block -29999999 0 1601 Items append from storage du:temp list[0]
execute if score $temp_0 mechanization.data matches 1.. store result storage du:temp list[0].Slot byte 1 run scoreboard players get $temp_0 mech_data
data modify storage du:temp obj set from storage du:temp list[0]
execute if score $temp_0 mechanization.data matches 1.. run data modify block ~ ~ ~ Items append from storage du:temp list[0]

#cycle
data remove storage du:temp list[0]
execute if data storage du:temp list[0] run function mechanization:machines/machines/steam_generator/gui_move
