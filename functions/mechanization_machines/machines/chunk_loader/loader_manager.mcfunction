execute @s[score_powerBuffer_min=300,tag=!active] ~ ~ ~ function mechanization_machines:machines/chunk_loader/loader_enable
execute @s[score_powerBuffer=299,tag=active] ~ ~ ~ function mechanization_machines:machines/chunk_loader/loader_disable

scoreboard players remove @s[score_powerBuffer_min=300] powerBuffer 300
