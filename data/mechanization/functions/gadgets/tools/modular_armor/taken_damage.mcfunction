
advancement revoke @s only mechanization:triggers/taken_damage
execute if score @s mechanization.player.shield matches 1.. run tag @s add mechanization.player.shield_stun
execute if score @s mechanization.player.shield matches 0.. run scoreboard players remove @s mechanization.player.shield 1
