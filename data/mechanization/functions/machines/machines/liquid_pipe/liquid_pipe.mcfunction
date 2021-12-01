
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.data matches -2147483648.. store result score @s mechanization.data run data get entity @s Item.tag.mech_data
execute if score $base.cf.backup mechanization.data matches 1 unless score @s du_uuid matches -2147483648.. store result score @s du_uuid run data get entity @s Item.tag.du_uuid

execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_data int 1 run scoreboard players get @s mech_data
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.du_uuid int 1 run scoreboard players get @s du_uuid

execute unless block ~ ~ ~ minecraft:barrier run function mechanization:machines/machines/liquid_pipe/break
execute if entity @s[tag=mech_pipe_input] run function mechanization:machines/machines/liquid_pipe/input

execute unless score @s du_data matches 2.. run function mechanization:machines/machines/liquid_pipe/oxidize
execute if score @s du_data matches 1.. run scoreboard players remove @s du_data 1
