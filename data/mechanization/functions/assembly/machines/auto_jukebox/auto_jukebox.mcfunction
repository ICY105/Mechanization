
# get powered
function block_utils:v1/api/is_active

# play record
execute if score #out block_utils.data matches 0 run tag @s remove mechanization.active
execute if score #out block_utils.data matches 1 if entity @s[tag=!mechanization.active] run function mechanization:assembly/machines/auto_jukebox/switch

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run kill @s
