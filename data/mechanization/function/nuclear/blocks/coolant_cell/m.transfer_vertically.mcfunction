
$execute if score @s fluid.storage.0 matches 1.. unless data entity @s item.tag.fluid[{id:"$(id)"}] run return fail

execute if score @s fluid.storage.0 matches ..0 run data modify entity @s item.tag.fluids[0] set from storage mechanization:temp obj
scoreboard players operation #amount mechanization.data = @s fluid.max_storage.0
scoreboard players operation #amount mechanization.data -= @s fluid.storage.0
scoreboard players operation #transfer mechanization.data += #amount mechanization.data
scoreboard players operation @s fluid.storage.0 += #amount mechanization.data
