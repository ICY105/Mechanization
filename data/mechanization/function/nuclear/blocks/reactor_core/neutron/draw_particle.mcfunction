
data modify storage mechanization:temp io.draw_particle set value {red: 1.0, blue: 1.0, size: 1.0}

scoreboard players operation #size mechanization.data = @s mechanization.fluid.in
scoreboard players operation #size mechanization.data += @s mechanization.fluid.out
scoreboard players add #size mechanization.data 15
execute store result storage mechanization:temp io.draw_particle.size double 0.02 run scoreboard players get #size mechanization.data
scoreboard players remove #size mechanization.data 15

scoreboard players operation #quantity mechanization.data = @s mechanization.fluid.in
scoreboard players operation #quantity mechanization.data *= #cons.100 mechanization.data
scoreboard players operation #quantity mechanization.data /= #size mechanization.data
execute store result storage mechanization:temp io.draw_particle.red double 0.01 run scoreboard players get #quantity mechanization.data

scoreboard players operation #quantity mechanization.data = @s mechanization.fluid.out
scoreboard players operation #quantity mechanization.data *= #cons.100 mechanization.data
scoreboard players operation #quantity mechanization.data /= #size mechanization.data
execute store result storage mechanization:temp io.draw_particle.blue double 0.01 run scoreboard players get #quantity mechanization.data

particle minecraft:dust{color:[0, 0, 0], scale:1} ~ ~1 ~ 0 0 0 0 1
function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle
execute if score #distance mechanization.data matches 2000.. positioned ^ ^ ^0.2 run function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle
execute if score #distance mechanization.data matches 4000.. positioned ^ ^ ^0.4 run function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle
execute if score #distance mechanization.data matches 6000.. positioned ^ ^ ^0.6 run function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle
execute if score #distance mechanization.data matches 8000.. positioned ^ ^ ^0.8 run function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle
execute if score #distance mechanization.data matches 10000.. positioned ^ ^ ^1.0 run function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle
execute if score #distance mechanization.data matches 12000.. positioned ^ ^ ^1.2 run function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle
execute if score #distance mechanization.data matches 14000.. positioned ^ ^ ^1.4 run function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle
