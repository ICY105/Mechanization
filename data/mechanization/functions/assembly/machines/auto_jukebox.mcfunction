data merge entity @s {Fire:32676}

#get powered
function du:world/blocks/is_active

#play record
execute if score $world.out_0 du_data matches 0 run tag @s remove mech_active
execute if score $world.out_0 du_data matches 1..2 if entity @s[tag=!mech_active] run function mechanization:assembly/machines/auto_jukebox_switch

#cleanup
execute unless block ~ ~ ~ barrel run kill @s
