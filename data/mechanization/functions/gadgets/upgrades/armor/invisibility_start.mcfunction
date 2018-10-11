tag @s add mech_invisible
gamemode spectator @s
summon area_effect_cloud ~ ~ ~ {Tags:["mech_invis_mark"],Duration:2000000000}

scoreboard players operation temp_0 mech_data = @s du_uuid
scoreboard players operation @e[tag=mech_invis_mark,sort=nearest,limit=1] mech_data = temp_0 du_data