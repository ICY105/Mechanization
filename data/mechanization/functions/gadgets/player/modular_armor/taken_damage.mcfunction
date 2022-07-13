
advancement revoke @s only mechanization:triggers/taken_damage
execute if score @s mechanization.shield matches 1 run scoreboard players set @s mechanization.shield -4
execute if score @s mechanization.shield matches 2.. run scoreboard players remove @s mechanization.shield 1
