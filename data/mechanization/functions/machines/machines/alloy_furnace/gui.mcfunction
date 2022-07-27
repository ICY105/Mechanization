
# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{ mechanization:{gui_item:1b} }}]
data remove storage mechanization:temp list[{Slot:0b}]
data remove storage mechanization:temp list[{Slot:1b}]
data remove storage mechanization:temp list[{Slot:4b}]
data remove storage mechanization:temp list[{Slot:7b}]
data remove storage mechanization:temp list[{Slot:9b}]
data remove storage mechanization:temp list[{Slot:18b}]
data remove storage mechanization:temp list[{Slot:19b}]
data remove storage mechanization:temp list[{Slot:22b}]
data remove storage mechanization:temp list[{Slot:25b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/alloy_furnace/gui_clear
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/alloy_furnace/gui_move

execute if data block -30000000 0 3201 Items[0] run loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

### fill in items

data remove block ~ ~ ~ Items[{tag:{ mechanization:{gui_item:1b} }}]
execute if entity @s[tag=mechanization.errored] run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{display:{Name:'{"translate":"mech.lore.alloy_furnace_error","italic":false}'}, mechanization:{gui_item:1b}}

# tank 1
item replace block ~ ~ ~ container.11 with minecraft:leather_boots{CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"mech.liquid.empty","italic":false}',Lore:[],color:0}, mechanization:{gui_item:1b}}
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.0
scoreboard players add #storage mechanization.data 249
scoreboard players operation #storage mechanization.data /= #cons.250 mechanization.data
scoreboard players add #storage mechanization.data 6422900
execute if data entity @s Item.tag.tank_1.tag.mechanization.liquid.molten run scoreboard players add #storage mechanization.data 17
execute store result block ~ ~ ~ Items[{Slot:11b}].tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data

scoreboard players operation #storage mechanization.data = @s mechanization.fluid.0
execute if score @s mechanization.fluid.0 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.tank_1.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:11b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.liquid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:11b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:11b}].tag.display.color set from entity @s Item.tag.tank_1.tag.mechanization.liquid.color

# tank 2
item replace block ~ ~ ~ container.14 with minecraft:leather_boots{CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"mech.liquid.empty","italic":false}',Lore:[],color:0}, mechanization:{gui_item:1b}}
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.1
scoreboard players add #storage mechanization.data 249
scoreboard players operation #storage mechanization.data /= #cons.250 mechanization.data
scoreboard players add #storage mechanization.data 6422900
execute if data entity @s Item.tag.tank_2.tag.mechanization.liquid.molten run scoreboard players add #storage mechanization.data 17
execute store result block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data

scoreboard players operation #storage mechanization.data = @s mechanization.fluid.1
execute if score @s mechanization.fluid.1 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.tank_2.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.1 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score @s mechanization.fluid.1 matches 1.. run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.1 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.liquid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score @s mechanization.fluid.1 matches 1.. run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.1 matches 1.. run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.color set from entity @s Item.tag.tank_2.tag.mechanization.liquid.color

# tank 3
item replace block ~ ~ ~ container.17 with minecraft:leather_boots{CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"mech.liquid.empty","italic":false}',Lore:[],color:0}, mechanization:{gui_item:1b}}
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.2
scoreboard players add #storage mechanization.data 249
scoreboard players operation #storage mechanization.data /= #cons.250 mechanization.data
scoreboard players add #storage mechanization.data 6422900
execute if data entity @s Item.tag.tank_3.tag.mechanization.liquid.molten run scoreboard players add #storage mechanization.data 17
execute store result block ~ ~ ~ Items[{Slot:17b}].tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data

scoreboard players operation #storage mechanization.data = @s mechanization.fluid.2
execute if score @s mechanization.fluid.2 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.tank_3.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.2 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score @s mechanization.fluid.2 matches 1.. run data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.2 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.liquid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score @s mechanization.fluid.2 matches 1.. run data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.2 matches 1.. run data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.color set from entity @s Item.tag.tank_3.tag.mechanization.liquid.color
