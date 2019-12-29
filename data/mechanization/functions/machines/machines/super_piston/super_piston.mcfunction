
#get powered
function du:world/blocks/is_active

#move stuff
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_active] run function mechanization:machines/machines/super_piston/piston_contract
execute if score $world.out_0 du_data matches 1..2 if entity @s[tag=!mech_active] run function mechanization:machines/machines/super_piston/piston_extend

#save result
execute if score $world.out_0 du_data matches 0 run tag @s remove mech_active
execute if score $world.out_0 du_data matches 1..2 run tag @s add mech_active

#cleanup
execute unless block ~ ~ ~ barrier run kill @s
