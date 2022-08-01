
scoreboard players operation $temp1 smithed.data += $xp.temp smithed.data
scoreboard players operation $xp.temp1 smithed.data = $temp smithed.data
scoreboard players operation $xp.temp1 smithed.data += $temp1 smithed.data

execute if score $xp.temp1 smithed.data > $temp3 smithed.data run function smithed.item:impl/v0.0.1/durability/calc_mending/return_overflow

execute if score $xp.temp smithed.data matches 256.. run xp add @s -128 points
execute if score $xp.temp smithed.data matches 256.. run scoreboard players remove $xp.temp smithed.data 256

execute if score $xp.temp smithed.data matches 128.. run xp add @s -64 points
execute if score $xp.temp smithed.data matches 128.. run scoreboard players remove $xp.temp smithed.data 128

execute if score $xp.temp smithed.data matches 64.. run xp add @s -32 points
execute if score $xp.temp smithed.data matches 64.. run scoreboard players remove $xp.temp smithed.data 64

execute if score $xp.temp smithed.data matches 32.. run xp add @s -16 points
execute if score $xp.temp smithed.data matches 32.. run scoreboard players remove $xp.temp smithed.data 32

execute if score $xp.temp smithed.data matches 16.. run xp add @s -8 points
execute if score $xp.temp smithed.data matches 16.. run scoreboard players remove $xp.temp smithed.data 16

execute if score $xp.temp smithed.data matches 8.. run xp add @s -4 points
execute if score $xp.temp smithed.data matches 8.. run scoreboard players remove $xp.temp smithed.data 8

execute if score $xp.temp smithed.data matches 4.. run xp add @s -2 points
execute if score $xp.temp smithed.data matches 4.. run scoreboard players remove $xp.temp smithed.data 4

execute if score $xp.temp smithed.data matches 2.. run xp add @s -1 points
execute if score $xp.temp smithed.data matches 2.. run scoreboard players remove $xp.temp smithed.data 2
