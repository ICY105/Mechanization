
tag @s remove mechanization.reactor_core
function mechanization:base/utils/break_machine_t2

execute positioned ~ ~1 ~ align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/update_model
execute positioned ~ ~-1 ~ align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/update_model
