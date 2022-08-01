
### Main

#set capacity
execute if entity @s[tag=mechanization.liquid_tank.t1] run scoreboard players operation $in_1 mechanization.data = #machines.cf.t1_tank.capacity mechanization.data
execute if entity @s[tag=mechanization.liquid_tank.t2] run scoreboard players operation $in_1 mechanization.data = #machines.cf.t2_tank.capacity mechanization.data
execute if entity @s[tag=mechanization.liquid_tank.t3] run scoreboard players operation $in_1 mechanization.data = #machines.cf.t3_tank.capacity mechanization.data

#ui
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/liquid_tank/tank_input
function mechanization:machines/machines/liquid_tank/gui

#effects
execute if score @s mechanization.fluid.0 matches 1.. if entity @s[tag=mechanization.liquid_tank.t1] if data entity @s Item.tag.tank.tag.mechanization.liquid.molten run function mechanization:machines/machines/liquid_tank/burn
execute if score @s mechanization.fluid.0 matches 1.. if entity @s[tag=mechanization.liquid_tank.t1] if data entity @s Item.tag.tank.tag.mechanization.liquid.gas run function mechanization:machines/machines/liquid_tank/burst
execute if score @s mechanization.fluid.0 matches 1.. if entity @s[tag=mechanization.liquid_tank.t2] if data entity @s Item.tag.tank.tag.mechanization.liquid.gas run function mechanization:machines/machines/liquid_tank/burst

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:machines/machines/liquid_tank/break_hard
