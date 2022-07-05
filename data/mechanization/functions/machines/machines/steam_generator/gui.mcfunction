
#move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:3b}]
data remove storage mechanization:temp list[{Slot:6b}]
data remove storage mechanization:temp list[{Slot:10b}]
data remove storage mechanization:temp list[{Slot:21b}]
data remove storage mechanization:temp list[{Slot:24b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/steam_generator/gui_clear
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/steam_generator/gui_move

execute if data block -30000000 0 3201 Items[0] run loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

### fill in items

data remove block ~ ~ ~ Items[{tag:{mechanization:{gui_item:1b}}}]

#water tank
item replace block ~ ~ ~ container.13 with minecraft:leather_boots{mechanization:{gui_item:1b},CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"mech.liquid.empty","italic":false}',Lore:[],color:0}}
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.0
scoreboard players add #storage mechanization.data 249
scoreboard players operation #storage mechanization.data /= #cons.250 mechanization.data
scoreboard players add #storage mechanization.data 6422900
execute if data entity @s Item.tag.water_item.tag.mechanization.liquid.molten run scoreboard players add #storage mechanization.data 17
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data
execute if score @s mechanization.fluid.0 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.water_item.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.liquid_amount","italic":false,"color":"gray","with":[{"score":{"name":"@s","objective":"mechanization.fluid.0"}}]}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.color set from entity @s Item.tag.water_item.tag.mechanization.liquid.color

#steam tank
item replace block ~ ~ ~ container.16 with minecraft:leather_boots{mechanization:{gui_item:1b},CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"mech.liquid.empty","italic":false}',Lore:[],color:0}}
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.1
scoreboard players add #storage mechanization.data 249
scoreboard players operation #storage mechanization.data /= #cons.250 mechanization.data
scoreboard players add #storage mechanization.data 6422900
execute if data entity @s Item.tag.steam_item.tag.mechanization.liquid.molten run scoreboard players add #storage mechanization.data 17
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data
execute if score @s mechanization.fluid.1 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.steam_item.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.1 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score @s mechanization.fluid.1 matches 1.. run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.1 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.liquid_amount","italic":false,"color":"gray","with":[{"score":{"name":"@s","objective":"mechanization.fluid.1"}}]}'
execute if score @s mechanization.fluid.1 matches 1.. run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.1 matches 1.. run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.color set from entity @s Item.tag.steam_item.tag.mechanization.liquid.color

#fuel slot
execute unless score @s mechanization.data matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:structure_block{mechanization:{gui_item:1b},CustomModelData:6422900,display:{Name:'{"text":""}'}}
execute if score @s mechanization.data matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:structure_block{mechanization:{gui_item:1b},CustomModelData:6422901,display:{Name:'{"text":""}'}}
