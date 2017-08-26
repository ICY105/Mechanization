scoreboard players set @s quantumFrequency 0

execute @s ~1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:1b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 1
execute @s ~1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:2b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 2
execute @s ~1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:3b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 3
execute @s ~1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:4b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 4
execute @s ~1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:5b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 5
execute @s ~1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:6b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 6
execute @s ~1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:7b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 7

execute @s ~-1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:1b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 10
execute @s ~-1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:2b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 20
execute @s ~-1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:3b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 30
execute @s ~-1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:4b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 40
execute @s ~-1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:5b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 50
execute @s ~-1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:6b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 60
execute @s ~-1 ~ ~ testfor @e[type=item_frame,c=1] {ItemRotation:7b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 70

execute @s ~ ~ ~1 testfor @e[type=item_frame,c=1] {ItemRotation:1b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 100
execute @s ~ ~ ~1 testfor @e[type=item_frame,c=1] {ItemRotation:2b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 200
execute @s ~ ~ ~1 testfor @e[type=item_frame,c=1] {ItemRotation:3b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 300
execute @s ~ ~ ~1 testfor @e[type=item_frame,c=1] {ItemRotation:4b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 400
execute @s ~ ~ ~1 testfor @e[type=item_frame,c=1] {ItemRotation:5b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 500
execute @s ~ ~ ~1 testfor @e[type=item_frame,c=1] {ItemRotation:6b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 600
execute @s ~ ~ ~1 testfor @e[type=item_frame,c=1] {ItemRotation:7b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 700

execute @s ~ ~ ~-1 testfor @e[type=item_frame,c=1] {ItemRotation:1b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 1000
execute @s ~ ~ ~-1 testfor @e[type=item_frame,c=1] {ItemRotation:2b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 2000
execute @s ~ ~ ~-1 testfor @e[type=item_frame,c=1] {ItemRotation:3b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 3000
execute @s ~ ~ ~-1 testfor @e[type=item_frame,c=1] {ItemRotation:4b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 4000
execute @s ~ ~ ~-1 testfor @e[type=item_frame,c=1] {ItemRotation:5b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 5000
execute @s ~ ~ ~-1 testfor @e[type=item_frame,c=1] {ItemRotation:6b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 6000
execute @s ~ ~ ~-1 testfor @e[type=item_frame,c=1] {ItemRotation:7b}
scoreboard players add @s[score_checks_min=1] quantumFrequency 7000

execute @s ~ ~1 ~ execute @p[r=1] ~ ~ ~ scoreboard players add @s cord 1
execute @s ~ ~1 ~ execute @p[r=1,score_cord_min=1,score_cord=1] ~ ~ ~ playsound mech.teleporter neutral @s
execute @s ~ ~1 ~ execute @p[r=1,score_cord_min=6] ~ ~ ~ function mechanization_machines:machines/teleporter_manager
scoreboard players remove @s[score_checks_min=1] powerBuffer 1000