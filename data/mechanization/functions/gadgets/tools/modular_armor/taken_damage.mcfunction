
advancement revoke @s only mechanization:triggers/taken_damage
execute if score @s mech_shield matches 0.. run scoreboard players remove @s mech_shield 1
tag @s add mech_shield_stun
