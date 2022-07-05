execute as @a at @s run function smithed.custom_block:impl/v0.0.1/player/tick

#/ execute as @e[type=#smithed.custom_block:ticking] at @s run function smithed.custom_block:impl/v0.0.1/technical/entity_tick

schedule function smithed.custom_block:impl/v0.0.1/technical/tick 1 replace

