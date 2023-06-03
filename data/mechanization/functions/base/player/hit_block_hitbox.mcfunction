
advancement revoke @s only mechanization:triggers/hit_block_hitbox

scoreboard players add @s mechanization.data 7
execute if score @s mechanization.data matches 15.. run scoreboard players set #loop mechanization.data 150
execute if score @s mechanization.data matches 15.. anchored eyes positioned ^ ^ ^ run function mechanization:base/player/hit_block_hitbox_loop
execute if score @s mechanization.data matches 15.. run scoreboard players set @s mechanization.data 0


