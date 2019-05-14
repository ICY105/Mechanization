scoreboard players set in_0 mech_data 100
execute positioned ~ ~1.61 ~ run function mechanization:machines/tools/spawner_mover/place_spawner_controller_2
execute if score in_0 mech_data matches ..-1 run replaceitem entity @s weapon.mainhand air
