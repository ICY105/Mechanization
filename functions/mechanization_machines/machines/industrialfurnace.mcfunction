execute @s ~ ~ ~ blockdata ~ ~ ~ {BurnTime:10}
execute @s ~ ~ ~ testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {CookTimeTotal:4s}
scoreboard players remove @s[score_checks_min=1] powerBuffer 10
execute @s[score_checks_min=1] ~ ~ ~ playsound mech.machine_active block @a[r=8] ~ ~ ~ 0.1 1.05