execute @s ~ ~ ~ testforblock ~ ~2 ~ minecraft:log -1
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~2 ~ {Marker:1b,Tags:["fellerbot"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[score_checks_min=1] ~ ~ ~ playsound mech.tree_feller_active block @a[r=8]

execute @s ~ ~ ~ testforblock ~ ~2 ~ minecraft:log2 -1
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~2 ~ {Marker:1b,Tags:["fellerbot"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[score_checks_min=1] ~ ~ ~ playsound mech.tree_feller_active block @a[r=8]

scoreboard players remove @s[score_checks_min=1] powerBuffer 800