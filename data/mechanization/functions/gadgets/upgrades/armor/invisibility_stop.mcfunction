tag @s remove mech_invisible
gamemode survival @s

scoreboard players operation temp_0 mech_data = @s du_uuid
execute as @e[tag=mech_invis_mark] if score @s mech_data = temp_0 du_data run kill @s