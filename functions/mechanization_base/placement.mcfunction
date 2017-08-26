#Storage Cells
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"4487933f-9eb6-4b25-a060-a2428e247b47"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~0.75 ~ {Marker:1b,Tags:["storage1","storage"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:1,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"6cbf42e6-d4c2-46f1-aa25-952fd4858a66"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~0.75 ~ {Marker:1b,Tags:["storage2","storage"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:2,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"2cf928cb-6162-49e0-987b-fd95e0102ed2"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~0.75 ~ {Marker:1b,Tags:["storage3","storage"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:3,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"fa01b0c9-675b-43fd-93b4-f67032fbd2af"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~0.75 ~ {Marker:1b,Tags:["storageQuantum","storage"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:19,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players set @e[tag=storageQuantum,c=1] quantumFrequency 0
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier

#Custom Heads
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000002"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-000000000001"}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000004"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-000000000003"}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000006"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-000000000005"}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000008"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-000000000007"}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000010"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-000000000009"}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000012"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-0000000000011"}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000014"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-0000000000013"}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000016"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-0000000000015"}}

#cleanup
scoreboard players add @e[type=armor_stand,r=1,tag=storage] powerStorage 0
execute @e[type=armor_stand,r=1,tag=storage] ~ ~ ~ stats entity @s set SuccessCount @s checks