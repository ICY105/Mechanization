
scoreboard players set $temp_0 mech_data 1000
scoreboard players operation $predicate mech_data = @s du_uuid
execute align y positioned ~ ~0.9 ~ as @e[tag=mech_liquid_src,distance=..1.4] run function mechanization:machines/machines/liquid_pipe/input_2 
