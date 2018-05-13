scoreboard players operation temp_0 mech_data = @s du_uuid

execute if entity @s[tag=!mech_active,scores={mech_power=1280..}] as @e[tag=mech_loader_marker] if score @s du_uuid = temp_0 mech_data run tag @s add mech_active
execute if entity @s[tag=mech_active,scores={mech_power=..1280}] as @e[tag=mech_loader_marker] if score @s du_uuid = temp_0 mech_data run tag @s remove mech_active

tag @s[scores={mech_power=1280..}] add mech_active
tag @s[scores={mech_power=..1280}] remove mech_active

scoreboard players remove @s[tag=mech_active] mech_power 1280
