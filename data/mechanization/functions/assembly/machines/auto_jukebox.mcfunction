execute if score timer_20 du_data matches 0..1 run data merge entity @s {Fire:32676}

execute if block ~ ~ ~ dropper[triggered=true] if entity @s[tag=!mech_active] run data merge block ~ ~1 ~ {TransferCooldown:20}
execute if block ~ ~ ~ dropper[triggered=true] if entity @s[tag=!mech_active] run tag @s add mech_switch
execute if block ~ ~ ~ dropper[triggered=false] if entity @s[tag=mech_active] run tag @s remove mech_active

execute unless block ~ ~ ~ dropper run kill @s
