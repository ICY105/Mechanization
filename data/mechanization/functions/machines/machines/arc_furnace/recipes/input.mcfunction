
# copy data
data modify storage mechanization:temp obj set value {input_item:{},fluid_item:{}}
data modify storage mechanization:temp obj.input_item set from block ~ ~ ~ Items[{Slot:3b}]
data modify storage mechanization:temp obj.fluid_item set from entity @s Item.tag.tank

# check recipes
execute if entity @s[tag=!mechanization.upgraded.nether] unless data storage mechanization:temp obj.input_item.tag.smithed.dict run function mechanization:machines/machines/arc_furnace/recipes/input_vanilla
execute if entity @s[tag=!mechanization.upgraded.ender] unless data storage mechanization:temp obj.input_item.tag.smithed.dict run function mechanization:machines/machines/arc_furnace/recipes/input_vanilla_misc
execute if entity @s[tag=!mechanization.upgraded.nether] if data storage mechanization:temp obj.input_item.tag.smithed.dict.raw run function mechanization:machines/machines/arc_furnace/recipes/input_raw
execute if entity @s[tag=!mechanization.upgraded.nether] if data storage mechanization:temp obj.input_item.tag.smithed.dict.raw_block run function mechanization:machines/machines/arc_furnace/recipes/input_raw_block
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.ingot run function mechanization:machines/machines/arc_furnace/recipes/input_ingot
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.block run function mechanization:machines/machines/arc_furnace/recipes/input_block
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.nugget run function mechanization:machines/machines/arc_furnace/recipes/input_nugget

execute if score @s[tag=!mechanization.upgraded] mechanization.timer matches 3.. run scoreboard players operation @s mechanization.timer *= #cons.3 mechanization.data
execute if score @s[tag=!mechanization.upgraded] mechanization.timer matches 3.. run scoreboard players operation @s mechanization.timer /= #cons.4 mechanization.data

# calculate needed power
scoreboard players operation #needed_energy mechanization.data = #machines.cf.arc_furnace.power mechanization.data
scoreboard players operation #needed_energy mechanization.data *= @s mechanization.timer
execute if score @s energy.storage < #needed_energy mechanization.data run scoreboard players set @s mechanization.timer 0
