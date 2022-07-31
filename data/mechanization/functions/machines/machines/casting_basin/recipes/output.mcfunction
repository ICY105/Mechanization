
#copy data
data modify storage mechanization:temp obj set value {output_item:{},fluid_item:{}}
data modify storage mechanization:temp obj.fluid_item set from entity @s Item.tag.tank
data modify storage mechanization:temp obj.output_item set from block ~ ~ ~ Items[{Slot:12b}]
execute store result score #count mechanization.data run data get storage mechanization:temp obj.output_item.Count

#check recipes
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. run function mechanization:machines/machines/casting_basin/recipes/output_ingot
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 2 if score @s mechanization.fluid.0 matches 1296.. run function mechanization:machines/machines/casting_basin/recipes/output_block
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 2 if score @s mechanization.fluid.0 matches 288.. run function mechanization:machines/machines/casting_basin/recipes/output_block_gem
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 3 if score @s mechanization.fluid.0 matches 16.. run function mechanization:machines/machines/casting_basin/recipes/output_nugget
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 4 if score @s mechanization.fluid.0 matches 72.. run function mechanization:machines/machines/casting_basin/recipes/output_gem

execute if score #count mechanization.data matches ..63 if score @s[tag=!mechanization.upgraded] mechanization.data matches 5 if score @s mechanization.fluid.0 matches 432.. run function mechanization:machines/machines/casting_basin/recipes/output_rod
execute if score #count mechanization.data matches ..63 if score @s[tag=!mechanization.upgraded] mechanization.data matches 6 if score @s mechanization.fluid.0 matches 576.. run function mechanization:machines/machines/casting_basin/recipes/output_plate
execute if score #count mechanization.data matches ..63 if score @s[tag=!mechanization.upgraded] mechanization.data matches 7 if score @s mechanization.fluid.0 matches 720.. run function mechanization:machines/machines/casting_basin/recipes/output_gear

execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] mechanization.data matches 5 if score @s mechanization.fluid.0 matches 360.. run function mechanization:machines/machines/casting_basin/recipes/output_rod
execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] mechanization.data matches 6 if score @s mechanization.fluid.0 matches 504.. run function mechanization:machines/machines/casting_basin/recipes/output_plate
execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] mechanization.data matches 7 if score @s mechanization.fluid.0 matches 648.. run function mechanization:machines/machines/casting_basin/recipes/output_gear

execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded.ender] mechanization.data matches 5 if score @s mechanization.fluid.0 matches 288.. run function mechanization:machines/machines/casting_basin/recipes/output_rod
execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded.ender] mechanization.data matches 6 if score @s mechanization.fluid.0 matches 432.. run function mechanization:machines/machines/casting_basin/recipes/output_plate
execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded.ender] mechanization.data matches 7 if score @s mechanization.fluid.0 matches 576.. run function mechanization:machines/machines/casting_basin/recipes/output_gear

scoreboard players set #upgrade mechanization.data 0
execute if entity @s[tag=mechanization.upgraded] run scoreboard players set #upgrade mechanization.data 1
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players set #upgrade mechanization.data 2
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players set #upgrade mechanization.data 3
function #mechanization:machines/casting_basin_output

#cleanup
execute if score @s mechanization.fluid.0 matches 0 run data modify entity @s Item.tag.tank set value {}
