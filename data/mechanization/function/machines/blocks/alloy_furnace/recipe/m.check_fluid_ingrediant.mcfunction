
execute store result score #amount mechanization.data run data get storage mechanization:temp obj.temp.amount
$execute if data storage mechanization:temp obj.tank_1{id:"$(id)"} if score @s fluid.storage.0 >= #amount mechanization.data run return 4
$execute if data storage mechanization:temp obj.tank_2{id:"$(id)"} if score @s fluid.storage.1 >= #amount mechanization.data run return 5
return fail
