
# move
tp @s ^ ^ ^0.1
scoreboard players add @s mechanization.data 1

# draw particle
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

execute at @s run function mechanization:nuclear/blocks/reactor_core/neutron/m.draw_particle with storage mechanization:temp io.draw_particle

# check block
scoreboard players set #check mechanization.data 0
execute align xyz unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #check mechanization.data 1
execute if score #check mechanization.data matches 1 run function mechanization:nuclear/blocks/reactor_core/neutron/check_block
execute if score #check mechanization.data matches 1 at @s if block ~ ~ ~ #mechanization:neutron_reflector run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reflector

# kill if empty or timer expires
scoreboard players remove @s mechanization.time 1
execute if score @s mechanization.time matches ..0 run kill @s
execute if score @s mechanization.fluid.in matches ..0 if score @s mechanization.fluid.out matches ..0 run kill @s
