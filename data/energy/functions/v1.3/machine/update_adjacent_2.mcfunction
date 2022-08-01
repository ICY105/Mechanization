
#reroute to proper function
execute if score #machine.type energy.data matches 1 if entity @s[tag=energy.receive] run function energy:v1.3/machine/update_adjacent_machine
execute if score #machine.type energy.data matches 2 if entity @s[tag=energy.send] run function energy:v1.3/machine/update_adjacent_machine
execute if score #machine.type energy.data matches 3 if entity @s[tag=energy.receive,tag=!energy.send] run function energy:v1.3/machine/update_adjacent_machine
execute if score #machine.type energy.data matches 3 if entity @s[tag=!energy.receive,tag=energy.send] run function energy:v1.3/machine/update_adjacent_machine
execute if entity @s[tag=energy.cable] run function energy:v1.3/cable/update
