data merge entity @s {Fire:32676}

execute if block ~ ~ ~ dropper[triggered=true] if entity @s[tag=!mech_active] run function mechanization:base/machines/network_reformer/active
execute if block ~ ~ ~ dropper[triggered=false] run tag @s remove mech_active

execute unless block ~ ~ ~ dropper run kill @s
