
scoreboard players set in_0 du_data 120
function du:raytrace/move_ray_block
scoreboard players operation @s du_data = out_0 du_data
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #du:place_block_through unless entity @a[distance=..0.75] run function du:custom_blocks/place_block
kill @s
