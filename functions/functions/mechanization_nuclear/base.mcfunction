#placement
execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ function mechanization_nuclear:placement

#wrench
execute @e[type=silverfish,tag=wrench_break] ~ ~ ~ function mechanization_nuclear:wrench

#reactor
scoreboard players add @e[type=armor_stand,tag=fissionReactor,score_reactorFuel_min=1] timer 1
execute @e[type=armor_stand,tag=fissionReactor,score_reactorFuel_min=1,score_timer_min=60] ~ ~ ~ function mechanization_nuclear:reactor

#steam tick
tp @e[type=armor_stand,tag=steam] ~ ~.05 ~
tp @e[type=armor_stand,tag=Turbine,score_reactorHeat_min=1] ~ ~ ~ ~15 ~
execute @s[score_timer_min=9,score_timer=9] ~ ~ ~ execute @e[type=armor_stand,tag=boil] ~ ~ ~ function mechanization_nuclear:boil
execute @s[score_timer_min=11,score_timer=11] ~ ~ ~ execute @e[type=armor_stand,tag=steam] ~ ~ ~ function mechanization_nuclear:steam
execute @e[type=armor_stand,tag=steam] ~ ~ ~ particle cloud ~ ~0.5 ~ 0 0.25 0 0 3

#game tick
execute @e[type=armor_stand,tag=fissionReactor] ~ ~1 ~ scoreboard players tag @e[type=Item,r=1] add uranium {Item:{id:"minecraft:firework_charge",tag:{Explosion:{Colors:[I;8978176]},display:{Name:"§aUranium Ingot"}},Damage:0s}}
execute @e[type=item,tag=uranium] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=fissionReactor,c=1] reactorFuel 60
kill @e[type=item,tag=uranium]

#turbines
execute @s[score_timer_min=10,score_timer=10] ~ ~ ~ execute @e[type=armor_stand,tag=Turbine] ~ ~ ~ function mechanization_nuclear:turbine

#once per second
execute @s[score_timer_min=0,score_timer=0] ~ ~ ~ function mechanization_nuclear:delayed