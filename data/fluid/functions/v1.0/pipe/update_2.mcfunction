
# route to proper function
execute if entity @s[tag=fluid.tank] run function fluid:v1.0/pipe/update_machine
execute if entity @s[tag=fluid.pipe] run function fluid:v1.0/pipe/update_pipe
