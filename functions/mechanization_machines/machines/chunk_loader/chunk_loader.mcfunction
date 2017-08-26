execute @e[type=armor_stand,tag=chunk_loader] ~ ~ ~ function mechanization_machines:machines/chunk_loader/loader_manager

execute @e[type=area_effect_cloud,tag=load_manager] ~ ~ ~ execute @s[tag=active] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_area