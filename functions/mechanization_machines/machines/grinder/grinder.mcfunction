blockdata ~ ~ ~ {BurnTime:40,CookTime:0}

scoreboard players tag @s remove outputFull
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:2b,Count:64b}]}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @s add outputFull
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:2b,Count:63b}]}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @s add outputFull
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:2b,Count:62b}]}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @s add outputFull


execute @s[tag=!recipeValid] ~ ~ ~ testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b}]}
execute @s[tag=!outputFull] ~ ~ ~ execute @s[tag=!recipeValid,score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/begin
execute @s[tag=recipeValid] ~ ~ ~ playsound mech.machine_active block @a[r=8] ~ ~ ~ 0.3 1.05
scoreboard players add @s[tag=recipeValid] timer 1
scoreboard players remove @s[score_timer_min=1] powerBuffer 80
execute @s[score_timer_min=4] ~ ~ ~ function mechanization_machines:machines/grinder/finish