
# verify same item
scoreboard players set #type mechanization.data -1
execute if data entity @s Item.tag.stored_item run scoreboard players set #type mechanization.data 0
execute if score #type mechanization.data matches 0 run data modify storage mechanization:temp obj set from entity @s Item.tag.stored_item
execute if score #type mechanization.data matches 0 store success score #type mechanization.data run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:10b}]
execute if score #type mechanization.data matches 1 run tag @s remove mechanization.active

# main
execute unless data block ~ ~ ~ Items[{Slot:10b}].tag.mechanization.upgrades run tag @s remove mechanization.active
execute if entity @s[tag=!mechanization.active] run item replace block ~ ~ ~ container.12 with minecraft:air
execute if entity @s[tag=!mechanization.active] run item replace block ~ ~ ~ container.13 with minecraft:air
execute if entity @s[tag=!mechanization.active] run item replace block ~ ~ ~ container.14 with minecraft:air
execute if entity @s[tag=!mechanization.active] run item replace block ~ ~ ~ container.15 with minecraft:air
execute if entity @s[tag=!mechanization.active] run item replace block ~ ~ ~ container.16 with minecraft:air

# get data
execute store result score #active_slots mechanization.data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mechanization.upgrades.count
execute store result score #type mechanization.data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mechanization.upgrades.type

# remove bad items
data remove block -30000000 0 3201 Items
data modify block -30000000 0 3201 Items set from block ~ ~ ~ Items
data remove block -30000000 0 3201 Items[{tag:{ mechanization:{gui_item:1b} }}]
item replace block -30000000 0 3201 container.10 with air

execute if score #active_slots mechanization.data matches 1.. store result score #upgrade_type mechanization.data run data get block ~ ~ ~ Items[{Slot:12b}].tag.mechanization.upgrade.type
execute if score #active_slots mechanization.data matches 1.. if score #upgrade_type mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:elytra"}] run scoreboard players set #upgrade_type mechanization.data 3
execute if score #active_slots mechanization.data matches 1.. if score #upgrade_type mechanization.data = #type mechanization.data run item replace block -30000000 0 3201 container.12 with minecraft:air
execute if score #active_slots mechanization.data matches 1.. unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block ~ ~ ~ container.12 with minecraft:air

execute if score #active_slots mechanization.data matches 2.. store result score #upgrade_type mechanization.data run data get block ~ ~ ~ Items[{Slot:13b}].tag.mechanization.upgrade.type
execute if score #active_slots mechanization.data matches 2.. if score #upgrade_type mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:elytra"}] run scoreboard players set #upgrade_type mechanization.data 3
execute if score #active_slots mechanization.data matches 2.. if score #upgrade_type mechanization.data = #type mechanization.data run item replace block -30000000 0 3201 container.13 with minecraft:air
execute if score #active_slots mechanization.data matches 2.. unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block ~ ~ ~ container.13 with minecraft:air

execute if score #active_slots mechanization.data matches 3.. store result score #upgrade_type mechanization.data run data get block ~ ~ ~ Items[{Slot:14b}].tag.mechanization.upgrade.type
execute if score #active_slots mechanization.data matches 3.. if score #upgrade_type mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:elytra"}] run scoreboard players set #upgrade_type mechanization.data 3
execute if score #active_slots mechanization.data matches 3.. if score #upgrade_type mechanization.data = #type mechanization.data run item replace block -30000000 0 3201 container.14 with minecraft:air
execute if score #active_slots mechanization.data matches 3.. unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block ~ ~ ~ container.14 with minecraft:air

execute if score #active_slots mechanization.data matches 4.. store result score #upgrade_type mechanization.data run data get block ~ ~ ~ Items[{Slot:15b}].tag.mechanization.upgrade.type
execute if score #active_slots mechanization.data matches 4.. if score #upgrade_type mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:elytra"}] run scoreboard players set #upgrade_type mechanization.data 3
execute if score #active_slots mechanization.data matches 4.. if score #upgrade_type mechanization.data = #type mechanization.data run item replace block -30000000 0 3201 container.15 with minecraft:air
execute if score #active_slots mechanization.data matches 4.. unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block ~ ~ ~ container.15 with minecraft:air

execute if score #active_slots mechanization.data matches 5.. store result score #upgrade_type mechanization.data run data get block ~ ~ ~ Items[{Slot:16b}].tag.mechanization.upgrade.type
execute if score #active_slots mechanization.data matches 5.. if score #upgrade_type mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:elytra"}] run scoreboard players set #upgrade_type mechanization.data 3
execute if score #active_slots mechanization.data matches 5.. if score #upgrade_type mechanization.data = #type mechanization.data run item replace block -30000000 0 3201 container.16 with minecraft:air
execute if score #active_slots mechanization.data matches 5.. unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block ~ ~ ~ container.16 with minecraft:air

execute if score #active_slots mechanization.data matches 6.. store result score #upgrade_type mechanization.data run data get block ~ ~ ~ Items[{Slot:17b}].tag.mechanization.upgrade.type
execute if score #active_slots mechanization.data matches 6.. if score #upgrade_type mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:17b,id:"minecraft:elytra"}] run scoreboard players set #upgrade_type mechanization.data 3
execute if score #active_slots mechanization.data matches 6.. if score #upgrade_type mechanization.data = #type mechanization.data run item replace block -30000000 0 3201 container.17 with minecraft:air
execute if score #active_slots mechanization.data matches 6.. unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block ~ ~ ~ container.17 with minecraft:air

execute if data block -30000000 0 3201 Items[0] run loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

# update ui
function mechanization:gadgets/machines/tinker_table/reset_ui

# add modifiers
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:10b}]
data modify storage mechanization:temp list set value []
execute unless data block ~ ~ ~ Items[{Slot:12b}].tag.mechanization.gui_item run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:12b}]
execute unless data block ~ ~ ~ Items[{Slot:13b}].tag.mechanization.gui_item run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:13b}]
execute unless data block ~ ~ ~ Items[{Slot:14b}].tag.mechanization.gui_item run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:14b}]
execute unless data block ~ ~ ~ Items[{Slot:15b}].tag.mechanization.gui_item run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:15b}]
execute unless data block ~ ~ ~ Items[{Slot:16b}].tag.mechanization.gui_item run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:16b}]
execute unless data block ~ ~ ~ Items[{Slot:17b}].tag.mechanization.gui_item run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:17b}]

execute if entity @s[tag=mechanization.active] run function mechanization:gadgets/machines/tinker_table/add_modifiers
execute if entity @s[tag=mechanization.active] run data modify block ~ ~ ~ Items append from storage mechanization:temp obj 

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t2
execute if entity @s[tag=mechanization.active] run data modify entity @s Item.tag.stored_item set from block ~ ~ ~ Items[{Slot:10b}]
execute if entity @s[tag=!mechanization.active] run data modify entity @s Item.tag.stored_item set value {}
