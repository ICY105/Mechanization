
function du:base/base
execute as @a at @s run function du:player/player
execute as @a[nbt={ SelectedItem:{ tag:{du_nerf:1b} } }] at @s run function du:player/tool_nerf
execute as @a at @s run function du:clickdetect/clickdetect
execute as @a[scores={du_placehead=1..}] at @s run function du:player/place_head
execute as @a[tag=du_right_click] at @s run function du:custom_blocks/place_custom_block
execute if score timer_100 du_data matches 0 as @a[gamemode=!spectator] at @s run function du:worldgen/worldgen
