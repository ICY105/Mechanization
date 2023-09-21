
# draw particle
data modify storage mechanization:temp obj set value {color: 1.0, size: 1.0}
execute store result storage mechanization:temp obj.color double 0.01 run scoreboard players get @s mechanization.data
scoreboard players operation #size mechanization.data = @s mechanization.fluid.in
scoreboard players add #size mechanization.data 50
execute store result storage mechanization:temp obj.size double 0.02 run scoreboard players get #size mechanization.data
function mechanization:nuclear/blocks/reactor_core/neutron/draw_particle with storage mechanization:temp obj

# check block every 1 block
scoreboard players operation #step mechanization.data = @s mechanization.time
scoreboard players operation #step mechanization.data %= #cons.10 mechanization.data

execute if score #step mechanization.data matches 0 run function mechanization:nuclear/blocks/reactor_core/neutron/check_block

# move
tp @s ^ ^ ^0.1

# kill timer
scoreboard players add @s mechanization.time 1
execute if score @s mechanization.time matches 80.. run kill @s

execute if score @s mechanization.data matches ..0 run kill @s
execute if score @s mechanization.fluid.in matches ..0 run kill @s
