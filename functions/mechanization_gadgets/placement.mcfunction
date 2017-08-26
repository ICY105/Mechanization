#tinker table
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"719b952b-6a23-49a8-90af-4b4ae854030b"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~0.15 ~ {Marker:1b,Tags:["tinkertable","device"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:16,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier

#charge pad
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"551d5e4a-a877-8fe7-c964-2acb77d25a31"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["chargepad","device"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:17,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:stone_slab

execute @s ~ ~ ~ scoreboard players set @e[type=armor_stand,tag=device,r=1,c=1] powerBuffer 0