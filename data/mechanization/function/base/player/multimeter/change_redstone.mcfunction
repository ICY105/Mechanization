
# cycle redstone state
scoreboard players add @s mechanization.redstone 1
execute if score @s mechanization.redstone matches 3.. run scoreboard players set @s mechanization.redstone 0

# print state
execute if score @s mechanization.redstone matches 0 run data modify storage smithed.actionbar:input message set value {priority:"notification",freeze: 0,json:'[{"translate":"text.mechanization.redstone.off","color":"dark_green"}]'}
execute if score @s mechanization.redstone matches 1 run data modify storage smithed.actionbar:input message set value {priority:"notification",freeze: 0,json:'[{"translate":"text.mechanization.redstone.normal","color":"dark_green"}]'}
execute if score @s mechanization.redstone matches 2 run data modify storage smithed.actionbar:input message set value {priority:"notification",freeze: 0,json:'[{"translate":"text.mechanization.redstone.inverted","color":"dark_green"}]'}
execute if score @s mechanization.redstone matches 0..2 as @p at @s run function #smithed.actionbar:message
