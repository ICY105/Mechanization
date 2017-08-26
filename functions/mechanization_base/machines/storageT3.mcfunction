#holds 1000000 KJ
#transfers 1000 KJ/s
#transfers to 8000 KJ
#range 48 m

#display
entitydata @s[score_powerStorage=0] {CustomName:"§4████████"}
entitydata @s[score_powerStorage_min=1,score_powerStorage=125000] {CustomName:"§2█§4███████"}
entitydata @s[score_powerStorage_min=125000,score_powerStorage=250000] {CustomName:"§2██§4██████"}
entitydata @s[score_powerStorage_min=250000,score_powerStorage=375000] {CustomName:"§2███§4█████"}
entitydata @s[score_powerStorage_min=375000,score_powerStorage=500000] {CustomName:"§2████§4████"}
entitydata @s[score_powerStorage_min=500000,score_powerStorage=625000] {CustomName:"§2█████§4███"}
entitydata @s[score_powerStorage_min=750000,score_powerStorage=750000] {CustomName:"§2██████§4██"}
entitydata @s[score_powerStorage_min=875000,score_powerStorage=875000] {CustomName:"§2███████§4█"}
entitydata @s[score_powerStorage_min=999000] {CustomName:"§2████████"}

#energy transfer
execute @s[score_powerStorage=999000] ~ ~ ~ scoreboard players tag @e[c=1,r=48,score_powerSource_min=1000] add transfer
scoreboard players add @s[score_checks_min=1] powerStorage 1000
scoreboard players remove @e[tag=transfer,r=48] powerSource 1000
execute @e[tag=transfer,r=48] ~ ~ ~ function mechanization_base:machines/transfer_effect

execute @s[score_powerStorage_min=1000] ~ ~ ~ scoreboard players tag @e[c=1,r=48,score_powerBuffer=8000,type=!player] add transfer
scoreboard players remove @s[score_checks_min=1] powerStorage 1000
scoreboard players add @e[tag=transfer,r=48] powerBuffer 1000
execute @e[tag=transfer,r=48] ~ ~ ~ function mechanization_base:machines/transfer_effect

#Ambient Sounds
execute @s[score_timer_min=1,score_timer=1] ~ ~ ~ playsound mech.cell_ambient ambient @a[r=8] ~ ~ ~ 0.05
scoreboard players add @s timer 1
scoreboard players set @s[score_timer_min=3] timer 0