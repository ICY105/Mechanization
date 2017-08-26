#holds 100000 KJ
#transfers 100 KJ/s
#transfers to 2000 KJ
#range 24 m

#energy display
entitydata @s[score_powerStorage=0] {CustomName:"§4████████"}
entitydata @s[score_powerStorage_min=1,score_powerStorage=12500] {CustomName:"§2█§4███████"}
entitydata @s[score_powerStorage_min=12500,score_powerStorage=25000] {CustomName:"§2██§4██████"}
entitydata @s[score_powerStorage_min=25000,score_powerStorage=37500] {CustomName:"§2███§4█████"}
entitydata @s[score_powerStorage_min=37500,score_powerStorage=50000] {CustomName:"§2████§4████"}
entitydata @s[score_powerStorage_min=50000,score_powerStorage=62500] {CustomName:"§2█████§4███"}
entitydata @s[score_powerStorage_min=62500,score_powerStorage=75000] {CustomName:"§2██████§4██"}
entitydata @s[score_powerStorage_min=75000,score_powerStorage=87500] {CustomName:"§2███████§4█"}
entitydata @s[score_powerStorage_min=99900] {CustomName:"§2████████"}

#energy transfer
execute @s[score_powerStorage=99900] ~ ~ ~ scoreboard players tag @e[c=1,r=24,score_powerSource_min=100] add transfer
scoreboard players add @s[score_checks_min=1] powerStorage 100
scoreboard players remove @e[tag=transfer,r=24] powerSource 100
execute @e[tag=transfer,r=24] ~ ~ ~ function mechanization_base:machines/transfer_effect

execute @s[score_powerStorage_min=100] ~ ~ ~ scoreboard players tag @e[c=1,r=24,score_powerBuffer=2000,type=!player] add transfer
scoreboard players remove @s[score_checks_min=1] powerStorage 100
scoreboard players add @e[tag=transfer,r=24] powerBuffer 100
execute @e[tag=transfer,r=24] ~ ~ ~ function mechanization_base:machines/transfer_effect

#Ambient Sounds
execute @s[score_timer_min=1,score_timer=1] ~ ~ ~ playsound mech.cell_ambient ambient @a[r=8] ~ ~ ~ 0.05
scoreboard players add @s timer 1
scoreboard players set @s[score_timer_min=3] timer 0