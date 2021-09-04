

scoreboard players operation $temp_0 mech_data = $machines.cf.liquid_pipe.rate mech_data
scoreboard players operation $predicate mech_data = @s du_uuid
function du:world/blocks/is_active
execute if score $world.out_0 du_data matches 0 align y positioned ~ ~0.9 ~ as @e[type=#mechanization:valid_block_entity,tag=mech_liquid_src,distance=..1.3] run function mechanization:machines/machines/liquid_pipe/input_2 
