# @public

advancement revoke @s only smithed.damage:player/event

execute if entity @s[advancements={smithed.damage:player/event={generic=true}}] run data modify storage smithed.damage:main io.damage.type set value "generic"
execute if entity @s[advancements={smithed.damage:player/event={bypass_armor=true}}] run data modify storage smithed.damage:main io.damage.type set value "bypass_armor"
execute if entity @s[advancements={smithed.damage:player/event={bypasses_invulnerability=true}}] run data modify storage smithed.damage:main io.damage.type set value "bypasses_invulnerability"
execute if entity @s[advancements={smithed.damage:player/event={bypasses_magic=true}}] run data modify storage smithed.damage:main io.damage.type set value "bypasses_magic"
execute if entity @s[advancements={smithed.damage:player/event={is_explosion=true}}] run data modify storage smithed.damage:main io.damage.type set value "is_explosion"
execute if entity @s[advancements={smithed.damage:player/event={is_fire=true}}] run data modify storage smithed.damage:main io.damage.type set value "is_fire"
execute if entity @s[advancements={smithed.damage:player/event={is_lightning=true}}] run data modify storage smithed.damage:main io.damage.type set value "is_lightning"
execute if entity @s[advancements={smithed.damage:player/event={is_magic=true}}] run data modify storage smithed.damage:main io.damage.type set value "is_magic"

function #smithed.damage:event/player
