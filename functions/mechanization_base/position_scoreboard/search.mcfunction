summon area_effect_cloud ~ 0 ~ {Tags:["x_cord","search"],Duration:1}
scoreboard players set @e[type=area_effect_cloud,tag=x_cord] checks 0
execute @e[type=area_effect_cloud,tag=x_cord] ~ ~ ~ stats entity @s set SuccessCount @s checks
execute @s 0 0 ~ execute @e[type=area_effect_cloud,tag=x_cord,dx=100000] ~ ~ ~ function mechanization_base:position_scoreboard/search_x_pos
execute @s 0 0 ~ execute @e[type=area_effect_cloud,tag=x_cord,dx=-100000] ~ ~ ~ function mechanization_base:position_scoreboard/search_x_neg
tp @e[type=area_effect_cloud,tag=x_cord] 0 0 0

summon area_effect_cloud ~ 0 ~ {Tags:["z_cord","search"],Duration:1}
scoreboard players set @e[type=area_effect_cloud,tag=z_cord] checks 0
execute @e[type=area_effect_cloud,tag=z_cord] ~ ~ ~ stats entity @s set SuccessCount @s checks
execute @s ~ 0 0 execute @e[type=area_effect_cloud,tag=z_cord,dz=100000] ~ ~ ~ function mechanization_base:position_scoreboard/search_z_pos
execute @s ~ 0 0 execute @e[type=area_effect_cloud,tag=z_cord,dz=-100000] ~ ~ ~ function mechanization_base:position_scoreboard/search_z_neg
tp @e[type=area_effect_cloud,tag=z_cord] 0 0 0

summon area_effect_cloud 0 ~ 0 {Tags:["y_cord","search"],Duration:1}
execute @e[type=area_effect_cloud,tag=y_cord] ~ ~ ~ function mechanization_base:position_scoreboard/search_y
tp @e[type=area_effect_cloud,tag=y_cord] 0 0 0