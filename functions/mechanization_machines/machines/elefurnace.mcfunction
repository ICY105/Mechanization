execute @s ~ ~ ~ blockdata ~ ~ ~ {BurnTime:40}
execute @s ~ ~ ~ testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b}]}
scoreboard players remove @s[score_checks_min=1] powerBuffer 20
execute @s[score_checks_min=1] ~ ~ ~ playsound mech.machine_active block @a[r=8] ~ ~ ~ 0.3 1.05