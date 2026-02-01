
# loop control
scoreboard players set #loop mechanization.data 10000
execute if score #loop mechanization.data > @s mechanization.time run scoreboard players operation #loop mechanization.data = @s mechanization.data

function mechanization:nuclear/blocks/reactor_core/neutron/scan

scoreboard players remove @s mechanization.time 10000
scoreboard players operation @s mechanization.time += #loop mechanization.data

# kill if empty or timer expires
execute if score @s mechanization.fluid.in matches 0 if score @s mechanization.fluid.out matches 0 run kill @s
execute if score @s mechanization.time matches ..0 run kill @s
