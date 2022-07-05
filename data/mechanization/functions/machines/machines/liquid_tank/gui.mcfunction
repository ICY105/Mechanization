
#move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{ mechanization:{gui_item:1b} }}]
data remove storage mechanization:temp list[{Slot:0b}]
data remove storage mechanization:temp list[{Slot:6b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/liquid_tank/gui_clear
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/liquid_tank/gui_move

execute if data block -30000000 0 3201 Items[0] run loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

### fill in items

data remove block ~ ~ ~ Items[{tag:{ mechanization:{gui_item:1b} }}]

# tank
item replace block ~ ~ ~ container.4 with minecraft:leather_boots{CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"mech.liquid.empty","italic":false}',Lore:[],color:0},mechanization:{gui_item:1b}}
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.0
scoreboard players operation #storage mechanization.data *= #cons.16 mechanization.data
scoreboard players operation #storage mechanization.data /= $in_1 mechanization.data
scoreboard players add #storage mechanization.data 6422900
execute if data entity @s Item.tag.tank.tag.mechanization.liquid.molten run scoreboard players add #storage mechanization.data 17
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data
execute if score @s mechanization.fluid.0 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.tank.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.liquid_amount","italic":false,"color":"gray","with":[{"score":{"name":"@s","objective":"mechanization.fluid.0"}}]}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.color set from entity @s Item.tag.tank.tag.mechanization.liquid.color

# model
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.0
scoreboard players operation #storage mechanization.data *= #cons.8 mechanization.data
scoreboard players operation #storage mechanization.data /= $in_1 mechanization.data
execute if entity @s[tag=mechanization.liquid_tank.t1] run scoreboard players add #storage mechanization.data 6422922
execute if entity @s[tag=mechanization.liquid_tank.t2] run scoreboard players add #storage mechanization.data 6422931
execute if entity @s[tag=mechanization.liquid_tank.t3] run scoreboard players add #storage mechanization.data 6422940
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data
