scoreboard players set @s checks 0
stats entity @s set SuccessCount @s checks
execute @p ~ ~ ~ execute @s[score_sneak_min=1] ~ ~ ~ scoreboard players tag @e[type=silverfish,tag=toWrench] add wrench_break
execute @p ~ ~ ~ execute @s[score_sneak=0] ~ ~ ~ scoreboard players tag @e[type=silverfish,tag=toWrench] add wrench_function