
# load data
data modify storage mechanization:temp var set from storage mechanization:temp obj.name
execute store result score #color mechanization.data run data get storage mechanization:temp obj.color
execute store result score #temperature mechanization.data run data get storage mechanization:temp obj.temperature

# get model
item replace block -30000000 0 3201 container.0 with minecraft:leather_boots{CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"fluid.mechanization.empty","italic":false}',Lore:[],color:0}, mechanization:{gui_item:1b}}
scoreboard players operation #model mechanization.data = #storage mechanization.data
scoreboard players add #model mechanization.data 249
scoreboard players operation #model mechanization.data /= #cons.250 mechanization.data
scoreboard players add #model mechanization.data 6422900
execute if score #temperature mechanization.data matches 1000.. run scoreboard players add #model mechanization.data 17
execute store result block -30000000 0 3201 Items[{Slot:0b}].tag.CustomModelData int 1 run scoreboard players get #model mechanization.data

# set name & color
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3201 Items[{Slot:0b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"lore.mechanization.fluid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3201 Items[{Slot:0b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score #storage mechanization.data matches 1.. store result block -30000000 0 3201 Items[{Slot:0b}] int 1 run scoreboard players get #color mechanization.data
