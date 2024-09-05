
advancement revoke @s only mechanization:triggers/interact_with_block_hitbox
scoreboard players set #interaction mechanization.data 1
function mechanization:base/player/right_click

tag @s add mechanization.interacted
execute as @n[type=minecraft:interaction,tag=mechanization.block_hitbox,distance=..12,nbt={interaction:{}}] at @s run function mechanization:base/player/right_click_hitbox_2
tag @s remove mechanization.interacted
