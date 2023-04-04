data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 2b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 2b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 2b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run item replace block ~ ~ ~ container.2 from entity @s weapon.mainhand

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 3b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 3b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 3b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run item replace block ~ ~ ~ container.3 from entity @s weapon.mainhand

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 4b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 4b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 4b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run item replace block ~ ~ ~ container.4 from entity @s weapon.mainhand

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 11b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 11b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 11b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run item replace block ~ ~ ~ container.11 from entity @s weapon.mainhand

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 12b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 12b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 12b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run item replace block ~ ~ ~ container.12 from entity @s weapon.mainhand

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 13b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 13b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 13b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run item replace block ~ ~ ~ container.13 from entity @s weapon.mainhand

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 20b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 20b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 20b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run item replace block ~ ~ ~ container.20 from entity @s weapon.mainhand

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 21b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 21b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 21b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run item replace block ~ ~ ~ container.21 from entity @s weapon.mainhand

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot: 22b}]
function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/advanced
execute if score $temp smithed.data matches 0 store result block ~ ~ ~ Items[{Slot: 22b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot: 22b}].Count 0.9999999999
execute if score $temp smithed.data matches 1 run data modify block ~ ~ ~ Items[{Slot: 22b}] set from entity @s HandItems[0]

data remove entity @s HandItems[0]
scoreboard players set $temp smithed.data 0
