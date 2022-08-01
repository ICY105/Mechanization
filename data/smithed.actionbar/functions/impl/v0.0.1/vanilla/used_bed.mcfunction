advancement revoke @s only smithed.actionbar:v0.0.1/vanilla/used_bed requirement

scoreboard players set @s smithed.actionbar.priority 1
scoreboard players set @s smithed.actionbar.freeze 20
scoreboard players set @s[advancements={smithed.actionbar:v0.0.1/vanilla/slept_in_bed={requirement=true}}] smithed.actionbar.sleeping 1

execute if score @s smithed.actionbar.sleeping matches 1.. run schedule function smithed.actionbar:v0.0.1/vanilla/tick 1 replace

advancement revoke @s only smithed.actionbar:v0.0.1/vanilla/slept_in_bed requirement
