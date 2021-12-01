
## load scoreboard values
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_fluid matches -2147483648.. store result score @s mech_fluid run data get entity @s Item.tag.mech_fluid

### Main

#set capacity
execute if entity @s[tag=mech_t1_liquid_tank] run scoreboard players operation $in_1 mech_data = $machines.cf.t1_tank.capacity mech_data
execute if entity @s[tag=mech_t2_liquid_tank] run scoreboard players operation $in_1 mech_data = $machines.cf.t2_tank.capacity mech_data
execute if entity @s[tag=mech_t3_liquid_tank] run scoreboard players operation $in_1 mech_data = $machines.cf.t3_tank.capacity mech_data

#ui
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/liquid_tank/tank_input
function mechanization:machines/machines/liquid_tank/gui

#effects
execute if score @s mech_fluid matches 1.. if entity @s[tag=mech_t1_liquid_tank] if data entity @s Item.tag.tank.tag.ctc.traits.liquid.molten run function mechanization:machines/machines/liquid_tank/burn
execute if score @s mech_fluid matches 1.. if entity @s[tag=mech_t1_liquid_tank] if data entity @s Item.tag.tank.tag.ctc.traits.liquid.gas run function mechanization:machines/machines/liquid_tank/burst
execute if score @s mech_fluid matches 1.. if entity @s[tag=mech_t2_liquid_tank] if data entity @s Item.tag.tank.tag.ctc.traits.liquid.gas run function mechanization:machines/machines/liquid_tank/burst

## store scoreboard values
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:machines/machines/liquid_tank/break_hard
