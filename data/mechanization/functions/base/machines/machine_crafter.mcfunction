data merge entity @s {Fire:32676}

execute if block ~ ~ ~ dropper{Items:[{}]} run function #mechanization:machine_crafter

execute at @s unless block ~ ~ ~ minecraft:dropper run kill @s
