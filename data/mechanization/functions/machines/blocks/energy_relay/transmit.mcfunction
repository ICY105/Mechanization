
#send energy
scoreboard players set #energy mechanization.data 600
execute if score @s energy.storage matches ..600 run scoreboard players operation #energy mechanization.data = @s energy.storage

scoreboard players set #success mechanization.data 0
execute as @e[distance=1..48,type=minecraft:item_frame,tag=mechanization.energy_relay,scores={energy.storage=..2000,mechanization.data=1},sort=nearest,limit=1] store success score #success mechanization.data run scoreboard players operation @s energy.storage += #energy mechanization.data

execute if score #success mechanization.data matches 1 run scoreboard players operation @s energy.storage -= #energy mechanization.data
