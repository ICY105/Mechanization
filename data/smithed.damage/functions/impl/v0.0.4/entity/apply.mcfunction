# @public

# @doc entity/apply
# @input Amount of damage, score, @s, smithed.damage
# This function applies the specified amount of damage in half-hearts to the executing entity.
# ```mcfunction
# scoreboard players set @s smithed.damage 3    # Does 1.5 damage (3 half-hearts)
# function #smithed.damage:entity/apply         # Apply the damage
# ```
# To apply damage that respects armor, use their specific commands
# `function #smithed.damage:entity/apply/armor`: Respects armor, protection, and resistance
# `function #smithed.damage:entity/apply/explosion`: Respects the same as `armor` but blast protection as well
# `function #smithed.damage:entity/apply/projectile`: Respects the same as `armor` but projectile protection as well

execute if entity @s[type=player] run function smithed.damage:impl/v0.0.4/entity/health/calculate_modifier
execute if entity @s[type=!player] run function smithed.damage:impl/v0.0.4/entity/health/get_entity_health

execute if score @s smithed.damage >= $maximumHealth smithed.damage run function smithed.damage:impl/v0.0.4/entity/on_death
execute if score @s smithed.damage < $maximumHealth smithed.damage run function smithed.damage:impl/v0.0.4/entity/health/update
scoreboard players reset @s smithed.damage
