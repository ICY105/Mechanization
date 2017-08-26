testforblock ~ ~ ~ minecraft:chest -1 {Items:[{Slot:22b}]}
execute @s[tag=!recipeValid,score_checks=0] ~ ~ ~ function mechanization_machines:machines/alloy_furnace/begin
execute @s[tag=recipeValid] ~ ~ ~ playsound mech.machine_active block @a[r=8] ~ ~ ~ 0.3 1.05
scoreboard players add @s[tag=recipeValid] timer 1
scoreboard players remove @s[score_timer_min=1] powerBuffer 20
execute @s[score_timer_min=4] ~ ~ ~ function mechanization_machines:machines/alloy_furnace/finish