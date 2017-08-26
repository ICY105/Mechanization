#holds 500000 KJ
#transfers 1000 KJ/s
#transfers to 8000 KJ
#range 32 m

scoreboard players operation @s[score_quantumFrequency_min=0,score_quantumFrequency=0] powerStorage = quantum_0 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=1,score_quantumFrequency=1] powerStorage = quantum_1 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=2,score_quantumFrequency=2] powerStorage = quantum_2 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=3,score_quantumFrequency=3] powerStorage = quantum_3 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=4,score_quantumFrequency=4] powerStorage = quantum_4 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=5,score_quantumFrequency=5] powerStorage = quantum_5 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=6,score_quantumFrequency=6] powerStorage = quantum_6 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=7,score_quantumFrequency=7] powerStorage = quantum_7 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=8,score_quantumFrequency=8] powerStorage = quantum_8 powerStorage
scoreboard players operation @s[score_quantumFrequency_min=9,score_quantumFrequency=9] powerStorage = quantum_9 powerStorage

#display
entitydata @s[score_powerStorage=0] {CustomName:"§4████████"}
entitydata @s[score_powerStorage_min=1,score_powerStorage=62500] {CustomName:"§2█§4███████"}
entitydata @s[score_powerStorage_min=62500,score_powerStorage=125000] {CustomName:"§2██§4██████"}
entitydata @s[score_powerStorage_min=125000,score_powerStorage=187500] {CustomName:"§2███§4█████"}
entitydata @s[score_powerStorage_min=187500,score_powerStorage=250000] {CustomName:"§2████§4████"}
entitydata @s[score_powerStorage_min=250000,score_powerStorage=312500] {CustomName:"§2█████§4███"}
entitydata @s[score_powerStorage_min=312500,score_powerStorage=375000] {CustomName:"§2██████§4██"}
entitydata @s[score_powerStorage_min=375000,score_powerStorage=437500] {CustomName:"§2███████§4█"}
entitydata @s[score_powerStorage_min=499000] {CustomName:"§2████████"}

#energy transfer
execute @s[score_powerStorage=499000] ~ ~ ~ scoreboard players tag @e[c=1,r=32,score_powerSource_min=1000] add transfer
scoreboard players add @s[score_checks_min=1] powerStorage 1000
scoreboard players remove @e[tag=transfer,r=32] powerSource 1000
execute @e[tag=transfer,r=32] ~ ~ ~ function mechanization_base:machines/transfer_effect

execute @s[score_powerStorage_min=1000] ~ ~ ~ scoreboard players tag @e[c=1,r=32,score_powerBuffer=8000,type=!player] add transfer
scoreboard players remove @s[score_checks_min=1] powerStorage 1000
scoreboard players add @e[tag=transfer,r=32] powerBuffer 1000
execute @e[tag=transfer,r=32] ~ ~ ~ function mechanization_base:machines/transfer_effect

#Ambient Sounds
execute @s[score_timer_min=1,score_timer=1] ~ ~ ~ playsound mech.quantum_cell_ambient ambient @a[r=8] ~ ~ ~ 0.05
scoreboard players add @s timer 1
scoreboard players set @s[score_timer_min=12] timer 0

scoreboard players operation quantum_0 powerStorage = @s[score_quantumFrequency_min=0,score_quantumFrequency=0] powerStorage
scoreboard players operation quantum_1 powerStorage = @s[score_quantumFrequency_min=1,score_quantumFrequency=1] powerStorage
scoreboard players operation quantum_2 powerStorage = @s[score_quantumFrequency_min=2,score_quantumFrequency=2] powerStorage
scoreboard players operation quantum_3 powerStorage = @s[score_quantumFrequency_min=3,score_quantumFrequency=3] powerStorage
scoreboard players operation quantum_4 powerStorage = @s[score_quantumFrequency_min=4,score_quantumFrequency=4] powerStorage
scoreboard players operation quantum_5 powerStorage = @s[score_quantumFrequency_min=5,score_quantumFrequency=5] powerStorage
scoreboard players operation quantum_6 powerStorage = @s[score_quantumFrequency_min=6,score_quantumFrequency=6] powerStorage
scoreboard players operation quantum_7 powerStorage = @s[score_quantumFrequency_min=7,score_quantumFrequency=7] powerStorage
scoreboard players operation quantum_8 powerStorage = @s[score_quantumFrequency_min=8,score_quantumFrequency=8] powerStorage
scoreboard players operation quantum_9 powerStorage = @s[score_quantumFrequency_min=9,score_quantumFrequency=9] powerStorage