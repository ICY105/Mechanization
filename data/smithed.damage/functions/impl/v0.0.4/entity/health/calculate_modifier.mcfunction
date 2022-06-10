execute store result score $maximumHealth smithed.damage run attribute @s generic.max_health get
execute store result score $currentHealth smithed.damage run data get entity @s Health
scoreboard players operation @s smithed.damage += $maximumHealth smithed.damage
scoreboard players operation @s smithed.damage -= $currentHealth smithed.damage
