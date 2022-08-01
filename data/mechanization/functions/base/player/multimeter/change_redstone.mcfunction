
# cycle redstone state
scoreboard players add @s mechanization.redstone 1
execute if score @s mechanization.redstone matches 3.. run scoreboard players set @s mechanization.redstone 0

# print state
execute if score @s mechanization.redstone matches 0 run title @p actionbar [{"translate":"mech.text.multimeter.redstone.off","color":"dark_green"}]
execute if score @s mechanization.redstone matches 1 run title @p actionbar [{"translate":"mech.text.multimeter.redstone.normal","color":"dark_green"}]
execute if score @s mechanization.redstone matches 2 run title @p actionbar [{"translate":"mech.text.multimeter.redstone.inverted","color":"dark_green"}]

