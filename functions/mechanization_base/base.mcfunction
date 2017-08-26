#sneak
scoreboard players set @a[tag=sneaking,score_sneak=1,score_sneak_min=1] sneak 0
scoreboard players tag @a remove sneaking
scoreboard players tag @a[score_sneak_min=1] add sneaking
scoreboard players set @a[tag=sneaking] sneak 1

#manages timers
scoreboard players add @s timer 1
scoreboard players add @s timer250 1
scoreboard players set @s[score_timer_min=19] timer 0
scoreboard players set @s[score_timer250_min=249] timer250 0

#runs scripts for energy storages
execute @s[score_timer_min=1,score_timer=1] ~ ~ ~ execute @e[type=armor_stand,tag=storage1] ~ ~ ~ function mechanization_base:machines/storageT1
execute @s[score_timer_min=2,score_timer=2] ~ ~ ~ execute @e[type=armor_stand,tag=storage2] ~ ~ ~ function mechanization_base:machines/storageT2
execute @s[score_timer_min=3,score_timer=3] ~ ~ ~ execute @e[type=armor_stand,tag=storage3] ~ ~ ~ function mechanization_base:machines/storageT3
execute @s[score_timer_min=14,score_timer=14] ~ ~ ~ execute @e[type=armor_stand,tag=storageQuantum] ~ ~ ~ function mechanization_base:machines/storageQuantum

#once per second script
execute @s[score_timer_min=0,score_timer=0] ~ ~ ~ function mechanization_base:delayed

#wrench
execute @e[type=silverfish,tag=wrench_break] ~ ~ ~ function mechanization_base:wrench_break
execute @e[type=silverfish,tag=wrench_function] ~ ~ ~ function mechanization_base:wrench_function
execute @e[type=silverfish,tag=toWrench] ~ ~ ~ function mechanization_base:wrench

#placement
execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ scoreboard players tag @e[type=item] add atSkull {Item:{id:"minecraft:skull"}}
kill @e[tag=atSkull]

#ore refining
execute @a[score_startFire_min=1] ~ ~ ~ function mechanization_base:worldgen/refining

execute @a[score_placeHead_min=1] ~ ~ ~ function mechanization_base:place_head
execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ function mechanization_base:placement

#ore pickup
execute @a[score_pickupSkull_min=1] ~ ~ ~ function mechanization_base:head_pickup

#ray tracing
function mechanization_base:raytrace/base

#world gen
execute @r ~ 0 ~ execute @e[type=area_effect_cloud,tag=mechanization_gen,r=80,c=1] ~ ~ ~ function mechanization_base:worldgen/manager

#clear bad items from players
clear @a[m=!1] minecraft:diamond_shovel -1 1 {Unbreakable:1}