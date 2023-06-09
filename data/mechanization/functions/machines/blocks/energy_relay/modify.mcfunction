
# Energy Relay
tag @s remove energy.receive
tag @s remove energy.send

execute if entity @s run scoreboard players add @s mechanization.data 1
execute if score @s mechanization.data matches 2.. run scoreboard players set @s mechanization.data 0

execute if score @s mechanization.data matches 0 run tag @s add energy.receive
execute if score @s mechanization.data matches 1 run tag @s add energy.send

execute if score @s mechanization.data matches 0 run title @p actionbar [{"translate":"text.mechanization.machine_mode","color":"dark_aqua","bold":false},{"translate":"text.mechanization.transmission","color":"dark_aqua","bold":false}]
execute if score @s mechanization.data matches 1 run title @p actionbar [{"translate":"text.mechanization.machine_mode","color":"dark_aqua","bold":false},{"translate":"text.mechanization.collection","color":"dark_aqua","bold":false}]
