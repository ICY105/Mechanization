
# Get stored item data
execute store result score #energy mechanization.data run data get entity @s SelectedItem.tag.mechanization.energy
execute store result score #machine_upgrade mechanization.data if data entity @s SelectedItem.tag.mechanization{machine_upgrade:1b}
execute store result score #nether_upgrade mechanization.data if data entity @s SelectedItem.tag.mechanization{nether_upgrade:1b}
execute store result score #ender_upgrade mechanization.data if data entity @s SelectedItem.tag.mechanization{ender_upgrade:1b}
execute store result score #muffled mechanization.data if data entity @s SelectedItem.tag.mechanization{muffled:1b}

data modify storage mechanization:temp list set value []
execute if data entity @s SelectedItem.tag.mechanization.stored_fluids run data modify storage mechanization:temp list set from entity @s SelectedItem.tag.mechanization.stored_fluids
execute store result score #fluid.storage.0 mechanization.data run data get entity @s SelectedItem.tag.mechanization.stored_fluids_amount[0]
execute store result score #fluid.storage.1 mechanization.data run data get entity @s SelectedItem.tag.mechanization.stored_fluids_amount[1]
execute store result score #fluid.storage.2 mechanization.data run data get entity @s SelectedItem.tag.mechanization.stored_fluids_amount[2]
execute store result score #fluid.storage.3 mechanization.data run data get entity @s SelectedItem.tag.mechanization.stored_fluids_amount[3]

# sub-function
execute as @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] at @s run function mechanization:base/utils/init_machine_2
