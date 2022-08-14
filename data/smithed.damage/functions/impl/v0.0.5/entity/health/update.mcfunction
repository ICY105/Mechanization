execute if entity @s[type=player] run function smithed.damage:impl/v0.0.5/entity/health/update_player
execute if entity @s[type=!player] run function smithed.damage:impl/v0.0.5/entity/health/update_entity
