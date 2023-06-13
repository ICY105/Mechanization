
#reroute to proper function
execute if entity @s[tag=fluid.tank] run function fluid:v1.3/tank/update_adjacent_tank
execute if entity @s[tag=fluid.pipe] run function fluid:v1.3/pipe/update
