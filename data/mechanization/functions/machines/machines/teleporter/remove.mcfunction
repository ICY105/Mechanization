scoreboard players operation temp_0 mech_data = @s du_uuid
execute as @e[tag=mech_tele] if score @s du_uuid = temp_0 mech_data run kill @s
kill @s
