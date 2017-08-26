#reactor
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"206a8059-f5fb-41e7-8b33-233b5c72f932"}}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["fissionReactor"],Small:1,Invisible:1,Invulnerable:1,NoBasePlate:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:13,Count:1b,tag:{Unbreakable:1}}]}

#turbine
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"a2264edb-7dd6-460a-9826-6d6bd9f30bbf"}}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier 0
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["fakeTurb"],Small:1,Invisible:1,Invulnerable:1,NoBasePlate:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:14,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Turbine"],Small:1,Invisible:1,Invulnerable:1,NoBasePlate:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:15,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=Turbine,c=1,r=2] powerSource 0
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=fakeTurb,c=1,r=2] powerSource 0