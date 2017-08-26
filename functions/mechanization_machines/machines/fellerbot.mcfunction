scoreboard players set @s checks 0
stats entity @s set SuccessCount @s checks 0

setblock ~ ~ ~ minecraft:air 0 destroy

testforblock ~ ~1 ~ minecraft:log
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~1 ~ ~ minecraft:log
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~1 ~ ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~-1 ~ ~ minecraft:log
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~-1 ~ ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~ ~ ~1 minecraft:log
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~1 {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~ ~ ~-1 minecraft:log
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~-1 {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}

testforblock ~ ~1 ~ minecraft:log2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~1 ~ ~ minecraft:log2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~1 ~ ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~-1 ~ ~ minecraft:log2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~-1 ~ ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~ ~ ~1 minecraft:log2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~1 {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~ ~ ~-1 minecraft:log2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~-1 {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}

testforblock ~ ~1 ~ minecraft:leaves
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~1 ~ ~ minecraft:leaves
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~1 ~ ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~-1 ~ ~ minecraft:leaves
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~-1 ~ ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~ ~ ~1 minecraft:leaves
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~1 {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~ ~ ~-1 minecraft:leaves
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~-1 {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}

testforblock ~ ~1 ~ minecraft:leaves2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~1 ~ ~ minecraft:leaves2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~1 ~ ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~-1 ~ ~ minecraft:leaves2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~-1 ~ ~ {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~ ~ ~1 minecraft:leaves2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~1 {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
testforblock ~ ~ ~-1 minecraft:leaves2
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~-1 {Marker:1b,Tags:["fellerbot","fellernew"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}

execute @e[type=armor_stand,tag=fellernew] ~ ~ ~ setblock ~ ~ ~ minecraft:air 0 destroy
scoreboard players tag @e[type=armor_stand,tag=fellernew] remove fellernew

particle flame ~ ~ ~ 0 0 0 0 5
kill @s
