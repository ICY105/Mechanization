
# load data
execute if score #tank mechanization.data matches 0 run scoreboard players operation #storage mechanization.data = @s fluid.storage.0
execute if score #tank mechanization.data matches 1 run scoreboard players operation #storage mechanization.data = @s fluid.storage.1
execute if score #tank mechanization.data matches 2 run scoreboard players operation #storage mechanization.data = @s fluid.storage.2
execute if score #tank mechanization.data matches 3 run scoreboard players operation #storage mechanization.data = @s fluid.storage.3

execute if score #tank mechanization.data matches 0 run scoreboard players operation #max_storage mechanization.data = @s fluid.max_storage.0
execute if score #tank mechanization.data matches 1 run scoreboard players operation #max_storage mechanization.data = @s fluid.max_storage.1
execute if score #tank mechanization.data matches 2 run scoreboard players operation #max_storage mechanization.data = @s fluid.max_storage.2
execute if score #tank mechanization.data matches 3 run scoreboard players operation #max_storage mechanization.data = @s fluid.max_storage.3

execute if score #tank mechanization.data matches 0 run data modify storage mechanization:temp obj set from entity @s item.tag.fluids[0]
execute if score #tank mechanization.data matches 1 run data modify storage mechanization:temp obj set from entity @s item.tag.fluids[1]
execute if score #tank mechanization.data matches 2 run data modify storage mechanization:temp obj set from entity @s item.tag.fluids[2]
execute if score #tank mechanization.data matches 3 run data modify storage mechanization:temp obj set from entity @s item.tag.fluids[3]

data modify storage mechanization:temp var set from storage mechanization:temp obj.name
execute store result score #color mechanization.data run data get storage mechanization:temp obj.color
execute store result score #temperature mechanization.data run data get storage mechanization:temp obj.temperature

# get model
item replace block -30000000 0 3201 container.0 with minecraft:leather_boots{CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"fluid.mechanization.empty","color":"white","italic":false}',Lore:[],color:0}, mechanization:{gui_item:1b}}
scoreboard players operation #slice mechanization.data = #max_storage mechanization.data
scoreboard players operation #slice mechanization.data /= #cons.16 mechanization.data

scoreboard players operation #model mechanization.data = #storage mechanization.data
scoreboard players operation #model mechanization.data += #slice mechanization.data
scoreboard players remove #model mechanization.data 1
scoreboard players operation #model mechanization.data /= #slice mechanization.data
scoreboard players add #model mechanization.data 6422900
execute if score #temperature mechanization.data matches 1000.. run scoreboard players add #model mechanization.data 17
execute store result block -30000000 0 3201 Items[{Slot:0b}].tag.CustomModelData int 1 run scoreboard players get #model mechanization.data

# set name & color
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"color":"white","italic":false}'
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3201 Items[{Slot:0b}].tag.display.Name set from block -30000000 0 3202 front_text.messages[0]
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"lore.mechanization.fluid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3201 Items[{Slot:0b}].tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]
execute if score #storage mechanization.data matches 1.. store result block -30000000 0 3201 Items[{Slot:0b}].tag.display.color int 1 run scoreboard players get #color mechanization.data
