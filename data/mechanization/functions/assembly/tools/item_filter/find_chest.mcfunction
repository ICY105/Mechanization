
execute if block ~ ~ ~ #du:internal/chest-like run function mechanization:assembly/tools/item_filter/apply_filter 

#loop
scoreboard players remove temp_0 mech_data 1
execute if score temp_0 mech_data matches 1.. positioned ^ ^ ^0.05 run function mechanization:assembly/tools/item_filter/find_chest