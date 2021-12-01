
scoreboard players set $out_0 mech_data 1
scoreboard players set $out_1 mech_data -1

function mechanization:base/utils/is_fluid_container
execute if score $temp_0 mech_data matches 1 unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set $out_1 mech_data 6
execute if score $temp_0 mech_data matches 1 unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set $out_1 mech_data 3

execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:stick"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:oak_planks"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:birch_planks"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:spruce_planks"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:jungle_planks"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:acacia_planks"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:dark_oak_planks"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:coal"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:charcoal"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:coal_block"} run scoreboard players set $out_1 mech_data 10
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:10b}] if data storage du:temp obj{id:"minecraft:blaze_rod"} run scoreboard players set $out_1 mech_data 10
