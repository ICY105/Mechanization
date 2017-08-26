#holds 350000 KJ
#transfers 400 KJ/s
#transfers to 4000 KJ
#range 32 m

#display
entitydata @s[score_powerStorage=0] {CustomName:"§4████████"}
entitydata @s[score_powerStorage_min=1,score_powerStorage=43750] {CustomName:"§2█§4███████"}
entitydata @s[score_powerStorage_min=43750,score_powerStorage=87500] {CustomName:"§2██§4██████"}
entitydata @s[score_powerStorage_min=87500,score_powerStorage=131250] {CustomName:"§2███§4█████"}
entitydata @s[score_powerStorage_min=131250,score_powerStorage=175000] {CustomName:"§2████§4████"}
entitydata @s[score_powerStorage_min=175000,score_powerStorage=218750] {CustomName:"§2█████§4███"}
entitydata @s[score_powerStorage_min=218750,score_powerStorage=262500] {CustomName:"§2██████§4██"}
entitydata @s[score_powerStorage_min=262500,score_powerStorage=306250] {CustomName:"§2███████§4█"}
entitydata @s[score_powerStorage_min=399600] {CustomName:"§2████████"}

#energy transfer
execute @s[score_powerStorage=399600] ~ ~ ~ scoreboard players tag @e[c=1,r=32,score_powerSource_min=400] add transfer
scoreboard players add @s[score_checks_min=1] powerStorage 400
scoreboard players remove @e[tag=transfer,r=32] powerSource 400
execute @e[tag=transfer,r=32] ~ ~ ~ function mechanization_base:machines/transfer_effect

execute @s[score_powerStorage_min=400] ~ ~ ~ scoreboard players tag @e[c=1,r=32,score_powerBuffer=4000,type=!player] add transfer
scoreboard players remove @s[score_checks_min=1] powerStorage 400
scoreboard players add @e[tag=transfer,r=32] powerBuffer 400
execute @e[tag=transfer,r=32] ~ ~ ~ function mechanization_base:machines/transfer_effect

#Ambient Sounds
execute @s[score_timer_min=1,score_timer=1] ~ ~ ~ playsound mech.cell_ambient ambient @a[r=8] ~ ~ ~ 0.05
scoreboard players add @s timer 1
scoreboard players set @s[score_timer_min=3] timer 0