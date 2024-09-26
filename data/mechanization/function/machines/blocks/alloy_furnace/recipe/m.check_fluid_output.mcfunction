
execute if score @s fluid.storage.2 matches ..0 run return 1

execute store result score #amount mechanization.data run data get storage mechanization:temp obj.temp.amount
scoreboard players operation #amount mechanization.data += @s fluid.storage.2
execute if score #amount mechanization.data >= @s fluid.max_storage.2 run return fail

$execute if data storage mechanization:temp obj.tank_3{id:"$(id)"} run return 1
return fail
