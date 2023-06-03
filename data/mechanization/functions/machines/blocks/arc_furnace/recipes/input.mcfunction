
# copy data
data modify storage mechanization:temp obj set value {input_item:{},fluid_item:{}}
data modify storage mechanization:temp obj.input_item set from block ~ ~ ~ Items[{Slot:3b}]
data modify storage mechanization:temp obj.fluid_item set from entity @s item.tag.fluids[0]

# check recipes
execute if entity @s[tag=!mechanization.upgraded.nether] unless data storage mechanization:temp obj.input_item.tag.smithed.dict run function mechanization:machines/blocks/arc_furnace/recipes/input_vanilla
execute if entity @s[tag=!mechanization.upgraded.ender] unless data storage mechanization:temp obj.input_item.tag.smithed.dict run function mechanization:machines/blocks/arc_furnace/recipes/input_vanilla_misc
execute if entity @s[tag=!mechanization.upgraded.nether] if data storage mechanization:temp obj.input_item.tag.smithed.dict.raw run function mechanization:machines/blocks/arc_furnace/recipes/input_raw
execute if entity @s[tag=!mechanization.upgraded.nether] if data storage mechanization:temp obj.input_item.tag.smithed.dict.raw_block run function mechanization:machines/blocks/arc_furnace/recipes/input_raw_block
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.ingot run function mechanization:machines/blocks/arc_furnace/recipes/input_ingot
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.block run function mechanization:machines/blocks/arc_furnace/recipes/input_block
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.nugget run function mechanization:machines/blocks/arc_furnace/recipes/input_nugget

scoreboard players set #upgrade mechanization.data 0
execute if entity @s[tag=mechanization.upgraded] run scoreboard players set #upgrade mechanization.data 1
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players set #upgrade mechanization.data 2
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players set #upgrade mechanization.data 3
function #mechanization:machines/arc_furnace_input

execute if score @s[tag=mechanization.upgraded] mechanization.time matches 3.. run scoreboard players operation @s mechanization.time *= #cons.3 mechanization.data
execute if score @s[tag=mechanization.upgraded] mechanization.time matches 3.. run scoreboard players operation @s mechanization.time /= #cons.4 mechanization.data

# calculate needed power
scoreboard players operation #needed_energy mechanization.data = #machines.cf.arc_furnace.power mechanization.data
scoreboard players operation #needed_energy mechanization.data *= @s mechanization.time
execute if score @s energy.storage < #needed_energy mechanization.data run scoreboard players set @s mechanization.time 0
