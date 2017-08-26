scoreboard players tag @s add active
scoreboard players operation temp quantumFrequency = @s quantumFrequency
scoreboard players operation @e[type=area_effect_cloud,tag=load_manager] quantumFrequency -= temp quantumFrequency
scoreboard players tag @e[type=area_effect_cloud,tag=load_manager,score_quantumFrequency_min=0,score_quantumFrequency=0] add active
scoreboard players operation @e[type=area_effect_cloud,tag=load_manager] quantumFrequency += temp quantumFrequency