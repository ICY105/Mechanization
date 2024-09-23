data merge storage gu:temp {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
execute unless score @s gu.uuid.0 matches -2147483648.. run function gu:zzz/store_uuid

execute store result score 0= gu.main run scoreboard players operation 1= gu.main = @s gu.uuid.0
execute store result storage gu:temp 0 int 1 run scoreboard players operation 0= gu.main %= 256 num
execute store result score 2= gu.main run scoreboard players operation 1= gu.main /= 256 num
execute store result storage gu:temp 1 int 1 run scoreboard players operation 1= gu.main %= 256 num
execute store result score 3= gu.main run scoreboard players operation 2= gu.main /= 256 num
execute store result storage gu:temp 2 int 1 run scoreboard players operation 2= gu.main %= 256 num
execute store result storage gu:temp 3 int 1 run scoreboard players operation 3= gu.main /= 256 num

execute store result score 0= gu.main run scoreboard players operation 1= gu.main = @s gu.uuid.1
execute store result storage gu:temp 4 int 1 run scoreboard players operation 0= gu.main %= 256 num
execute store result score 2= gu.main run scoreboard players operation 1= gu.main /= 256 num
execute store result storage gu:temp 5 int 1 run scoreboard players operation 1= gu.main %= 256 num
execute store result score 3= gu.main run scoreboard players operation 2= gu.main /= 256 num
execute store result storage gu:temp 6 int 1 run scoreboard players operation 2= gu.main %= 256 num
execute store result storage gu:temp 7 int 1 run scoreboard players operation 3= gu.main /= 256 num

execute store result score 0= gu.main run scoreboard players operation 1= gu.main = @s gu.uuid.2
execute store result storage gu:temp 8 int 1 run scoreboard players operation 0= gu.main %= 256 num
execute store result score 2= gu.main run scoreboard players operation 1= gu.main /= 256 num
execute store result storage gu:temp 9 int 1 run scoreboard players operation 1= gu.main %= 256 num
execute store result score 3= gu.main run scoreboard players operation 2= gu.main /= 256 num
execute store result storage gu:temp a int 1 run scoreboard players operation 2= gu.main %= 256 num
execute store result storage gu:temp b int 1 run scoreboard players operation 3= gu.main /= 256 num

execute store result score 0= gu.main run scoreboard players operation 1= gu.main = @s gu.uuid.3
execute store result storage gu:temp c int 1 run scoreboard players operation 0= gu.main %= 256 num
execute store result score 2= gu.main run scoreboard players operation 1= gu.main /= 256 num
execute store result storage gu:temp d int 1 run scoreboard players operation 1= gu.main %= 256 num
execute store result score 3= gu.main run scoreboard players operation 2= gu.main /= 256 num
execute store result storage gu:temp e int 1 run scoreboard players operation 2= gu.main %= 256 num
execute store result storage gu:temp f int 1 run scoreboard players operation 3= gu.main /= 256 num

function gu:zzz/get_hexes with storage gu:temp
function gu:zzz/concat_uuid with storage gu:temp