
advancement revoke @s only mechanization:triggers/hit_block_hitbox

scoreboard players add @s mechanization.data 7
scoreboard players operation #interact mechanization.data = @s mechanization.data
execute as @e[type=minecraft:interaction,tag=mechanization.block_hitbox,distance=..12,sort=nearest,limit=1,nbt={attack:{}}] at @s run function mechanization:base/player/hit_block_hitbox_run
execute if score @s mechanization.data matches 15.. run scoreboard players set @s mechanization.data 0
