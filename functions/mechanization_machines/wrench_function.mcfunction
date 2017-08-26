#Gravity Manipulator
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ scoreboard players add @s quantumFrequency 1
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ execute @s[score_quantumFrequency_min=4] ~ ~ ~ scoreboard players set @s quantumFrequency 0
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ execute @s[score_quantumFrequency_min=0,score_quantumFrequency=0] ~ ~ ~ tellraw @p ["",{"text":"Machine off.","color":"blue"}]
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ execute @s[score_quantumFrequency_min=1,score_quantumFrequency=1] ~ ~ ~ tellraw @p ["",{"text":"Gravity neutralized.","color":"blue"}]
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ execute @s[score_quantumFrequency_min=1,score_quantumFrequency=1] ~ ~ ~ entitydata @s {ArmorItems:[{},{},{},{id:diamond_shovel,Damage:24,Count:1b,tag:{Unbreakable:1}}]}
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ execute @s[score_quantumFrequency_min=2,score_quantumFrequency=2] ~ ~ ~ tellraw @p ["",{"text":"Gravity reversed.","color":"blue"}]
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ execute @s[score_quantumFrequency_min=3,score_quantumFrequency=3] ~ ~ ~ tellraw @p ["",{"text":"Gravity increased.","color":"blue"}]
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ execute @s[score_quantumFrequency_min=3,score_quantumFrequency=3] ~ ~ ~ entitydata @s {ArmorItems:[{},{},{},{id:diamond_shovel,Damage:23,Count:1b,tag:{Unbreakable:1}}]}
execute @e[type=armor_stand,c=1,tag=gravity_manipulator,r=2] ~ ~ ~ effect @a[r=24] minecraft:levitation 0

#solar array
testfor @e[type=armor_stand,tag=solar2,c=1,r=2] {Pose:{Head:[0f,270f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=solar2,c=1] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @s add rotated
testfor @e[type=armor_stand,tag=solar2,c=1,r=2] {Pose:{Head:[0f,180f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=solar2,c=1] {Pose:{Head:[0f,270f,0f]}}
testfor @e[type=armor_stand,tag=solar2,c=1,r=2] {Pose:{Head:[0f,90f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=solar2,c=1] {Pose:{Head:[0f,180f,0f]}}
testfor @e[type=armor_stand,tag=solar2,c=1,r=2] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1,tag=!rotated] ~ ~ ~ entitydata @e[type=armor_stand,tag=solar2,c=1] {Pose:{Head:[0f,90f,0f]}}

#electric furnace
testfor @e[type=armor_stand,tag=eleFurnace,c=1,r=2] {Pose:{Head:[0f,270f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=eleFurnace,c=1] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @s add rotated
testfor @e[type=armor_stand,tag=eleFurnace,c=1,r=2] {Pose:{Head:[0f,180f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=eleFurnace,c=1] {Pose:{Head:[0f,270f,0f]}}
testfor @e[type=armor_stand,tag=eleFurnace,c=1,r=2] {Pose:{Head:[0f,90f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=eleFurnace,c=1] {Pose:{Head:[0f,180f,0f]}}
testfor @e[type=armor_stand,tag=eleFurnace,c=1,r=2] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1,tag=!rotated] ~ ~ ~ entitydata @e[type=armor_stand,tag=eleFurnace,c=1] {Pose:{Head:[0f,90f,0f]}}

#industrial furnace
testfor @e[type=armor_stand,tag=industrialFurnace,c=1,r=2] {Pose:{Head:[0f,270f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=industrialFurnace,c=1] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @s add rotated
testfor @e[type=armor_stand,tag=industrialFurnace,c=1,r=2] {Pose:{Head:[0f,180f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=industrialFurnace,c=1] {Pose:{Head:[0f,270f,0f]}}
testfor @e[type=armor_stand,tag=industrialFurnace,c=1,r=2] {Pose:{Head:[0f,90f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=industrialFurnace,c=1] {Pose:{Head:[0f,180f,0f]}}
testfor @e[type=armor_stand,tag=industrialFurnace,c=1,r=2] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1,tag=!rotated] ~ ~ ~ entitydata @e[type=armor_stand,tag=industrialFurnace,c=1] {Pose:{Head:[0f,90f,0f]}}

#ore grinder
testfor @e[type=armor_stand,tag=Grinder,c=1,r=2] {Pose:{Head:[0f,270f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=Grinder,c=1] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @s add rotated
testfor @e[type=armor_stand,tag=Grinder,c=1,r=2] {Pose:{Head:[0f,180f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=Grinder,c=1] {Pose:{Head:[0f,270f,0f]}}
testfor @e[type=armor_stand,tag=Grinder,c=1,r=2] {Pose:{Head:[0f,90f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=Grinder,c=1] {Pose:{Head:[0f,180f,0f]}}
testfor @e[type=armor_stand,tag=Grinder,c=1,r=2] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1,tag=!rotated] ~ ~ ~ entitydata @e[type=armor_stand,tag=Grinder,c=1] {Pose:{Head:[0f,90f,0f]}}

#alloy furnace
testfor @e[type=armor_stand,tag=alloy,c=1,r=2] {Pose:{Head:[0f,270f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=alloy,c=1] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @s add rotated
testfor @e[type=armor_stand,tag=alloy,c=1,r=2] {Pose:{Head:[0f,180f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=alloy,c=1] {Pose:{Head:[0f,270f,0f]}}
testfor @e[type=armor_stand,tag=alloy,c=1,r=2] {Pose:{Head:[0f,90f,0f]}}
execute @s[score_checks_min=1] ~ ~ ~ entitydata @e[type=armor_stand,tag=alloy,c=1] {Pose:{Head:[0f,180f,0f]}}
testfor @e[type=armor_stand,tag=alloy,c=1,r=2] {Pose:{Head:[0f,0.01f,0f]}}
execute @s[score_checks_min=1,tag=!rotated] ~ ~ ~ entitydata @e[type=armor_stand,tag=alloy,c=1] {Pose:{Head:[0f,90f,0f]}}



