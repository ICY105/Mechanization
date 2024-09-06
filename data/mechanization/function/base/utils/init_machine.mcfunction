
# Get stored item data
execute store result score #energy mechanization.data run data get entity @s SelectedItem.components."minecraft:custom_data".mechanization.energy
execute store result score #machine_upgrade mechanization.data if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{machine_upgrade:1b}}]
execute store result score #nether_upgrade mechanization.data if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{nether_upgrade:1b}}]
execute store result score #ender_upgrade mechanization.data if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{ender_upgrade:1b}}]
execute store result score #muffled mechanization.data if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{muffled:1b}}]

data modify storage mechanization:temp list set value []
execute if data entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_fluids run data modify storage mechanization:temp list set from entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_fluids
execute store result score #fluid.storage.0 mechanization.data run data get entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_fluids_amount[0]
execute store result score #fluid.storage.1 mechanization.data run data get entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_fluids_amount[1]
execute store result score #fluid.storage.2 mechanization.data run data get entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_fluids_amount[2]
execute store result score #fluid.storage.3 mechanization.data run data get entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_fluids_amount[3]

# sub-function
execute as @n[tag=mechanization.new,distance=..2] at @s run function mechanization:base/utils/init_machine_2
