

scoreboard players operation $temp_0 mechanization.data = $machines.cf.liquid_pipe.rate mechanization.data
scoreboard players operation $predicate mechanization.data = @s mechanization.item_id
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 align y positioned ~ ~0.9 ~ as @e[type=#mechanization:valid_block_entities,tag=mechanization.liquid.send,distance=..1.3] run function mechanization:machines/machines/liquid_pipe/input_2 
