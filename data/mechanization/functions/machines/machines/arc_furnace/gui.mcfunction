
#move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{ mechanization:{gui_item:1b} }}]
data remove storage mechanization:temp list[{Slot:1b}]
data remove storage mechanization:temp list[{Slot:3b}]
data remove storage mechanization:temp list[{Slot:7b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/arc_furnace/gui_clear
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/arc_furnace/gui_move

execute if data block -30000000 0 3201 Items[0] run loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

### fill in items

data remove block ~ ~ ~ Items[{tag:{ mechanization:{gui_item:1b} }}]

#tank
item replace block ~ ~ ~ container.5 with minecraft:leather_boots{CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"mech.liquid.empty","italic":false}',Lore:[],color:0}, mechanization:{gui_item:1b}}
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.0
scoreboard players add #storage mechanization.data 249
scoreboard players operation #storage mechanization.data /= #cons.250 mechanization.data
scoreboard players add #storage mechanization.data 6422900
execute if data entity @s Item.tag.tank.tag.mechanization.liquid.molten run scoreboard players add #storage mechanization.data 17
execute store result block ~ ~ ~ Items[{Slot:5b}].tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data
execute if score @s mechanization.fluid.0 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.tank.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.liquid_amount","italic":false,"color":"gray","with":[{"score":{"name":"@s","objective":"mechanization.data"}}]}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.color set from entity @s Item.tag.tank.tag.mechanization.liquid.color

#model
execute if score @s mechanization.timer matches 0 run data modify entity @s Item.tag.CustomModelData set value 6422027
execute if score @s mechanization.timer matches 1.. run data modify entity @s Item.tag.CustomModelData set value 6422949

execute unless score @s mechanization.timer matches 1.. run item replace block ~ ~ ~ container.6 with minecraft:structure_block{mechanization:{gui_item:1b},CustomModelData:6422900,display:{Name:'{"text":""}'}}
execute if score @s mechanization.timer matches 1.. run item replace block ~ ~ ~ container.6 with minecraft:structure_block{mechanization:{gui_item:1b},CustomModelData:6422901,display:{Name:'{"text":""}'}}
