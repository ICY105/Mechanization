# @doc entity/death_events
# Death events happen when an entity is killed via the custom [damage](apply.md).
# You can add death events by adding your function to the tag `#smithed.damage:event/entity/on_death`.
# Death events happen before the entity is actually killed.  
# When players are killed via the custom damage, custom [death messages](death_messages.md) run.
# 
# # Example Implementation
# `function: example:damage_entity`
# ```mcfunction
# tag @s add my_attack                          # Add a tag so that we can tell that it was
#                                               # our damage that killed the entity
# scoreboard players set @s smithed.damage 5
# function #smithed.damage:entity/apply/armor
# tag @s remove my_attack                       # Remove tag
# ```
# `function: example:custom_death`
# ```mcfunction
# # Check to make sure the entity has our tag and is a custom mob
# execute if entity @s[tag=my_attack,tag=my_custom_mob] run summon slime ~ ~ ~ {Size:0}
# # Check to make sure the entity has our tag and is a player
# execute if entity @s[type=player,tag=my_attack] run loot spawn ~ ~ ~ loot custom_loot:player_head
# ```
# `tag: #smithed.damage:event/entity/on_death`
# ```json
# {
#   "values": [
#       "example:custom_death"
#   ]    
# }
# ```

function #smithed.damage:event/entity/on_death
execute if entity @s[type=player] run function smithed.damage:impl/v0.0.5/entity/death_message
execute if entity @s[type=!player] run kill @s
