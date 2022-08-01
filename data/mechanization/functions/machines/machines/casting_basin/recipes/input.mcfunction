
#copy data
data modify storage mechanization:temp obj set value {output_item:{},fluid_item:{}}
data modify storage mechanization:temp obj.fluid_item set from entity @s Item.tag.tank
data modify storage mechanization:temp obj.output_item set from block ~ ~ ~ Items[{Slot:12b}]
execute store result score #count mechanization.data run data get storage mechanization:temp obj.output_item.Count

#check recipes
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 1 if score @s mechanization.fluid.0 matches 144.. run function mechanization:machines/machines/casting_basin/recipes/input_ingot
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 2 if score @s mechanization.fluid.0 matches 1296.. run function mechanization:machines/machines/casting_basin/recipes/input_block
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 2 if score @s mechanization.fluid.0 matches 288.. run function mechanization:machines/machines/casting_basin/recipes/input_block_gem
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 3 if score @s mechanization.fluid.0 matches 16.. run function mechanization:machines/machines/casting_basin/recipes/input_nugget
execute if score #count mechanization.data matches ..63 if score @s mechanization.data matches 4 if score @s mechanization.fluid.0 matches 72.. run function mechanization:machines/machines/casting_basin/recipes/input_gem

execute if score #count mechanization.data matches ..63 if score @s[tag=!mechanization.upgraded] mechanization.data matches 5 if score @s mechanization.fluid.0 matches 432.. run function mechanization:machines/machines/casting_basin/recipes/input_rod
execute if score #count mechanization.data matches ..63 if score @s[tag=!mechanization.upgraded] mechanization.data matches 6 if score @s mechanization.fluid.0 matches 576.. run function mechanization:machines/machines/casting_basin/recipes/input_plate
execute if score #count mechanization.data matches ..63 if score @s[tag=!mechanization.upgraded] mechanization.data matches 7 if score @s mechanization.fluid.0 matches 720.. run function mechanization:machines/machines/casting_basin/recipes/input_gear

execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] mechanization.data matches 5 if score @s mechanization.fluid.0 matches 360.. run function mechanization:machines/machines/casting_basin/recipes/input_rod
execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] mechanization.data matches 6 if score @s mechanization.fluid.0 matches 504.. run function mechanization:machines/machines/casting_basin/recipes/input_plate
execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] mechanization.data matches 7 if score @s mechanization.fluid.0 matches 648.. run function mechanization:machines/machines/casting_basin/recipes/input_gear

execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded.ender] mechanization.data matches 5 if score @s mechanization.fluid.0 matches 288.. run function mechanization:machines/machines/casting_basin/recipes/input_rod
execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded.ender] mechanization.data matches 6 if score @s mechanization.fluid.0 matches 432.. run function mechanization:machines/machines/casting_basin/recipes/input_plate
execute if score #count mechanization.data matches ..63 if score @s[tag=mechanization.upgraded.ender] mechanization.data matches 7 if score @s mechanization.fluid.0 matches 576.. run function mechanization:machines/machines/casting_basin/recipes/input_gear

scoreboard players set #upgrade mechanization.data 0
execute if entity @s[tag=mechanization.upgraded] run scoreboard players set #upgrade mechanization.data 1
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players set #upgrade mechanization.data 2
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players set #upgrade mechanization.data 3
function #mechanization:machines/casting_basin_input

#speed upgrade
execute if score @s[tag=mechanization.upgraded.nether] mechanization.time matches 2..5 run scoreboard players set @s mechanization.time 2
execute if score @s[tag=mechanization.upgraded.nether] mechanization.time matches 6.. run scoreboard players operation @s mechanization.time /= #cons.2 mechanization.data

#calculate needed power
scoreboard players operation #energy mechanization.data = $machines.cf.casting_basin.power mechanization.data
scoreboard players operation #energy mechanization.data *= @s mechanization.time
execute if score @s energy.storage < #energy mechanization.data run scoreboard players set @s mechanization.time 0
