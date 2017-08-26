scoreboard players set @s cord -1

scoreboard players operation temp quantumFrequency = @e[type=armor_stand,tag=teleporter_core,c=1] quantumFrequency
scoreboard players operation @e[type=armor_stand,tag=teleporter_core] quantumFrequency -= temp quantumFrequency

tp @s @r[type=armor_stand,tag=teleporter_core,c=1,rm=3,score_quantumFrequency_min=0,score_quantumFrequency=0]
tp @s ~ ~ ~

scoreboard players operation @e[type=armor_stand,tag=teleporter_core] quantumFrequency += temp quantumFrequency
