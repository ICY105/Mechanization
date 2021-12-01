
#verify same item
scoreboard players set $temp_0 mechanization.data -1
execute if data entity @s Item.tag.stored_item run scoreboard players set $temp_0 mechanization.data 0
execute if score $temp_0 mechanization.data matches 0 run data modify storage du:temp obj set from entity @s Item.tag.stored_item
execute if score $temp_0 mechanization.data matches 0 store success score $temp_0 mechanization.data run data modify storage du:temp obj set from block ~ ~ ~ Items[{Slot:10b}]
execute if score $temp_0 mechanization.data matches 1 run tag @s remove mech_active

#main
execute unless data block ~ ~ ~ Items[{Slot:10b}].tag.mech_upgrades run tag @s remove mech_active
execute if entity @s[tag=!mech_active] run item replace block ~ ~ ~ container.12 with minecraft:air
execute if entity @s[tag=!mech_active] run item replace block ~ ~ ~ container.13 with minecraft:air
execute if entity @s[tag=!mech_active] run item replace block ~ ~ ~ container.14 with minecraft:air
execute if entity @s[tag=!mech_active] run item replace block ~ ~ ~ container.15 with minecraft:air
execute if entity @s[tag=!mech_active] run item replace block ~ ~ ~ container.16 with minecraft:air

#get data
execute store result score $in_0 mechanization.data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mech_upgrades.count
execute store result score $temp_0 mechanization.data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mech_upgrades.type

#remove bad items
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
item replace block -29999999 0 1601 container.10 with air

execute if score $in_0 mechanization.data matches 1.. store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:12b}].tag.mech_upgrade.type
execute if score $in_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:elytra"}] run scoreboard players set $temp_1 mechanization.data 3
execute if score $in_0 mechanization.data matches 1.. if score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block -29999999 0 1601 container.12 with minecraft:air
execute if score $in_0 mechanization.data matches 1.. unless score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block ~ ~ ~ container.12 with minecraft:air

execute if score $in_0 mechanization.data matches 2.. store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:13b}].tag.mech_upgrade.type
execute if score $in_0 mechanization.data matches 2.. if score $temp_1 mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:elytra"}] run scoreboard players set $temp_1 mechanization.data 3
execute if score $in_0 mechanization.data matches 2.. if score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block -29999999 0 1601 container.13 with minecraft:air
execute if score $in_0 mechanization.data matches 2.. unless score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block ~ ~ ~ container.13 with minecraft:air

execute if score $in_0 mechanization.data matches 3.. store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:14b}].tag.mech_upgrade.type
execute if score $in_0 mechanization.data matches 3.. if score $temp_1 mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:elytra"}] run scoreboard players set $temp_1 mechanization.data 3
execute if score $in_0 mechanization.data matches 3.. if score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block -29999999 0 1601 container.14 with minecraft:air
execute if score $in_0 mechanization.data matches 3.. unless score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block ~ ~ ~ container.14 with minecraft:air

execute if score $in_0 mechanization.data matches 4.. store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:15b}].tag.mech_upgrade.type
execute if score $in_0 mechanization.data matches 4.. if score $temp_1 mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:elytra"}] run scoreboard players set $temp_1 mechanization.data 3
execute if score $in_0 mechanization.data matches 4.. if score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block -29999999 0 1601 container.15 with minecraft:air
execute if score $in_0 mechanization.data matches 4.. unless score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block ~ ~ ~ container.15 with minecraft:air

execute if score $in_0 mechanization.data matches 5.. store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:16b}].tag.mech_upgrade.type
execute if score $in_0 mechanization.data matches 5.. if score $temp_1 mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:elytra"}] run scoreboard players set $temp_1 mechanization.data 3
execute if score $in_0 mechanization.data matches 5.. if score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block -29999999 0 1601 container.16 with minecraft:air
execute if score $in_0 mechanization.data matches 5.. unless score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block ~ ~ ~ container.16 with minecraft:air

execute if score $in_0 mechanization.data matches 6.. store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:17b}].tag.mech_upgrade.type
execute if score $in_0 mechanization.data matches 6.. if score $temp_1 mechanization.data matches 0 if data block ~ ~ ~ Items[{Slot:17b,id:"minecraft:elytra"}] run scoreboard players set $temp_1 mechanization.data 3
execute if score $in_0 mechanization.data matches 6.. if score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block -29999999 0 1601 container.17 with minecraft:air
execute if score $in_0 mechanization.data matches 6.. unless score $temp_1 mechanization.data = $temp_0 mechanization.data run item replace block ~ ~ ~ container.17 with minecraft:air

execute if data block -29999999 0 1601 Items[0] run loot give @p mine -29999999 0 1601 minecraft:air{drop_contents:true}

#update ui
function mechanization:gadgets/machines/tinker_table/reset_ui

#add modifiers
data modify storage du:temp obj set from block ~ ~ ~ Items[{Slot:10b}]
data modify storage du:temp list set value []
execute unless data block ~ ~ ~ Items[{Slot:12b}].tag.du_gui run data modify storage du:temp list append from block ~ ~ ~ Items[{Slot:12b}]
execute unless data block ~ ~ ~ Items[{Slot:13b}].tag.du_gui run data modify storage du:temp list append from block ~ ~ ~ Items[{Slot:13b}]
execute unless data block ~ ~ ~ Items[{Slot:14b}].tag.du_gui run data modify storage du:temp list append from block ~ ~ ~ Items[{Slot:14b}]
execute unless data block ~ ~ ~ Items[{Slot:15b}].tag.du_gui run data modify storage du:temp list append from block ~ ~ ~ Items[{Slot:15b}]
execute unless data block ~ ~ ~ Items[{Slot:16b}].tag.du_gui run data modify storage du:temp list append from block ~ ~ ~ Items[{Slot:16b}]
execute unless data block ~ ~ ~ Items[{Slot:17b}].tag.du_gui run data modify storage du:temp list append from block ~ ~ ~ Items[{Slot:17b}]

execute if entity @s[tag=mech_active] run function mechanization:gadgets/machines/tinker_table/add_modifiers
execute if entity @s[tag=mech_active] run data modify block ~ ~ ~ Items append from storage du:temp obj 

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t2
execute if entity @s[tag=mech_active] run data modify entity @s Item.tag.stored_item set from block ~ ~ ~ Items[{Slot:10b}]
execute if entity @s[tag=!mech_active] run data modify entity @s Item.tag.stored_item set value {}
