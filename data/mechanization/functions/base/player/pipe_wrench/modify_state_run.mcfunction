execute if score @s mechanization.fluid.in matches 0 run scoreboard players reset @s mechanization.fluid.in
execute if score @s mechanization.fluid.out matches 0 run scoreboard players reset @s mechanization.fluid.out

# change mode
execute if score #side mechanization.data matches 0 if score #state mechanization.data matches 0 if score @s mechanization.fluid.out matches -64..64 run scoreboard players operation @s fluid.io.up = @s mechanization.fluid.out
execute if score #side mechanization.data matches 0 if score #state mechanization.data matches 0 unless score @s mechanization.fluid.out matches -64..64 run scoreboard players set @s fluid.io.up 0
execute if score #side mechanization.data matches 0 if score #state mechanization.data matches 1 run scoreboard players set @s fluid.io.up 0
execute if score #side mechanization.data matches 0 if score #state mechanization.data matches 2 if score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.up = @s mechanization.fluid.in
execute if score #side mechanization.data matches 0 if score #state mechanization.data matches 2 unless score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.up = @s mechanization.fluid.out

execute if score #side mechanization.data matches 1 if score #state mechanization.data matches 0 if score @s mechanization.fluid.out matches -64..64 run scoreboard players operation @s fluid.io.down = @s mechanization.fluid.out
execute if score #side mechanization.data matches 1 if score #state mechanization.data matches 0 unless score @s mechanization.fluid.out matches -64..64 run scoreboard players set @s fluid.io.down 0
execute if score #side mechanization.data matches 1 if score #state mechanization.data matches 1 run scoreboard players set @s fluid.io.down 0
execute if score #side mechanization.data matches 1 if score #state mechanization.data matches 2 if score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.down = @s mechanization.fluid.in
execute if score #side mechanization.data matches 1 if score #state mechanization.data matches 2 unless score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.down = @s mechanization.fluid.out

execute if score #side mechanization.data matches 2 if score #state mechanization.data matches 0 if score @s mechanization.fluid.out matches -64..64 run scoreboard players operation @s fluid.io.north = @s mechanization.fluid.out
execute if score #side mechanization.data matches 2 if score #state mechanization.data matches 0 unless score @s mechanization.fluid.out matches -64..64 run scoreboard players set @s fluid.io.north 0
execute if score #side mechanization.data matches 2 if score #state mechanization.data matches 1 run scoreboard players set @s fluid.io.north 0
execute if score #side mechanization.data matches 2 if score #state mechanization.data matches 2 if score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.north = @s mechanization.fluid.in
execute if score #side mechanization.data matches 2 if score #state mechanization.data matches 2 unless score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.north = @s mechanization.fluid.out

execute if score #side mechanization.data matches 3 if score #state mechanization.data matches 0 if score @s mechanization.fluid.out matches -64..64 run scoreboard players operation @s fluid.io.south = @s mechanization.fluid.out
execute if score #side mechanization.data matches 3 if score #state mechanization.data matches 0 unless score @s mechanization.fluid.out matches -64..64 run scoreboard players set @s fluid.io.south 0
execute if score #side mechanization.data matches 3 if score #state mechanization.data matches 1 run scoreboard players set @s fluid.io.south 0
execute if score #side mechanization.data matches 3 if score #state mechanization.data matches 2 if score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.south = @s mechanization.fluid.in
execute if score #side mechanization.data matches 3 if score #state mechanization.data matches 2 unless score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.south = @s mechanization.fluid.out

execute if score #side mechanization.data matches 4 if score #state mechanization.data matches 0 if score @s mechanization.fluid.out matches -64..64 run scoreboard players operation @s fluid.io.east = @s mechanization.fluid.out
execute if score #side mechanization.data matches 4 if score #state mechanization.data matches 0 unless score @s mechanization.fluid.out matches -64..64 run scoreboard players set @s fluid.io.east 0
execute if score #side mechanization.data matches 4 if score #state mechanization.data matches 1 run scoreboard players set @s fluid.io.east 0
execute if score #side mechanization.data matches 4 if score #state mechanization.data matches 2 if score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.east = @s mechanization.fluid.in
execute if score #side mechanization.data matches 4 if score #state mechanization.data matches 2 unless score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.east = @s mechanization.fluid.out

execute if score #side mechanization.data matches 5 if score #state mechanization.data matches 0 if score @s mechanization.fluid.out matches -64..64 run scoreboard players operation @s fluid.io.west = @s mechanization.fluid.out
execute if score #side mechanization.data matches 5 if score #state mechanization.data matches 0 unless score @s mechanization.fluid.out matches -64..64 run scoreboard players set @s fluid.io.west 0
execute if score #side mechanization.data matches 5 if score #state mechanization.data matches 1 run scoreboard players set @s fluid.io.west 0
execute if score #side mechanization.data matches 5 if score #state mechanization.data matches 2 if score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.west = @s mechanization.fluid.in
execute if score #side mechanization.data matches 5 if score #state mechanization.data matches 2 unless score @s mechanization.fluid.in matches -64..64 run scoreboard players operation @s fluid.io.west = @s mechanization.fluid.out

playsound minecraft:block.metal.hit player @a[distance=..12]
