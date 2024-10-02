
# copy data
data modify storage mechanization:temp obj set value {input_item:{},fluid_item:{}}
data modify storage mechanization:temp obj.input_item set from block ~ ~ ~ Items[{Slot:12b}]
data modify storage mechanization:temp obj.fluid_item set from entity @s item.components."minecraft:custom_data".fluids[0]

# check recipes
execute if entity @s[tag=!mechanization.upgraded.nether] unless data storage mechanization:temp obj.input_item.tag.smithed.dict run function mechanization:machines/blocks/arc_furnace/recipes/output_vanilla
execute if entity @s[tag=!mechanization.upgraded.ender] unless data storage mechanization:temp obj.input_item.tag.smithed.dict run function mechanization:machines/blocks/arc_furnace/recipes/output_vanilla_misc
execute if entity @s[tag=!mechanization.upgraded.nether] if data storage mechanization:temp obj.input_item.tag.smithed.dict.raw run function mechanization:machines/blocks/arc_furnace/recipes/output_raw
execute if entity @s[tag=!mechanization.upgraded.nether] if data storage mechanization:temp obj.input_item.tag.smithed.dict.raw_block run function mechanization:machines/blocks/arc_furnace/recipes/output_raw_block
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.ingot run function mechanization:machines/blocks/arc_furnace/recipes/output_ingot
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.packed run function mechanization:machines/blocks/arc_furnace/recipes/output_block
execute if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] if data storage mechanization:temp obj.input_item.tag.smithed.dict.nugget run function mechanization:machines/blocks/arc_furnace/recipes/output_nugget

scoreboard players set #upgrade mechanization.data 0
execute if entity @s[tag=mechanization.upgraded] run scoreboard players set #upgrade mechanization.data 1
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players set #upgrade mechanization.data 2
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players set #upgrade mechanization.data 3
function #mechanization:machines/arc_furnace_output

# cleanup
item modify block ~ ~ ~ container.12 mechanization:decrement_count
