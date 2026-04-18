
execute if entity @s[tag=mechanization.reactor_core] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reactor_core
execute if entity @s[tag=mechanization.control_rod,tag=mechanization.active] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_control_rod

execute if entity @s[tag=mechanization.moderator_cell.water] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_water
execute if entity @s[tag=mechanization.moderator_cell.heavy_water] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_heavy_water
execute if entity @s[tag=mechanization.coolant_cell] if data entity @s item.tag.fluids[{id:"water"}] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_water
execute if entity @s[tag=mechanization.coolant_cell] if data entity @s item.tag.fluids[{id:"heavy_water"}] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_heavy_water
