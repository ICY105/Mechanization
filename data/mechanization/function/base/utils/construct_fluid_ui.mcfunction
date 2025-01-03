
# load data
execute if score #tank mechanization.data matches 0 run scoreboard players operation #storage mechanization.data = @s fluid.storage.0
execute if score #tank mechanization.data matches 1 run scoreboard players operation #storage mechanization.data = @s fluid.storage.1
execute if score #tank mechanization.data matches 2 run scoreboard players operation #storage mechanization.data = @s fluid.storage.2
execute if score #tank mechanization.data matches 3 run scoreboard players operation #storage mechanization.data = @s fluid.storage.3

execute if score #tank mechanization.data matches 0 run scoreboard players operation #max_storage mechanization.data = @s fluid.max_storage.0
execute if score #tank mechanization.data matches 1 run scoreboard players operation #max_storage mechanization.data = @s fluid.max_storage.1
execute if score #tank mechanization.data matches 2 run scoreboard players operation #max_storage mechanization.data = @s fluid.max_storage.2
execute if score #tank mechanization.data matches 3 run scoreboard players operation #max_storage mechanization.data = @s fluid.max_storage.3

execute if score #tank mechanization.data matches 0 run data modify storage mechanization:temp obj set from entity @s item.components."minecraft:custom_data".fluids[0]
execute if score #tank mechanization.data matches 1 run data modify storage mechanization:temp obj set from entity @s item.components."minecraft:custom_data".fluids[1]
execute if score #tank mechanization.data matches 2 run data modify storage mechanization:temp obj set from entity @s item.components."minecraft:custom_data".fluids[2]
execute if score #tank mechanization.data matches 3 run data modify storage mechanization:temp obj set from entity @s item.components."minecraft:custom_data".fluids[3]

data modify storage mechanization:temp var set from storage mechanization:temp obj.name
execute store result score #color mechanization.data run data get storage mechanization:temp obj.color
execute store result score #temperature mechanization.data run data get storage mechanization:temp obj.temperature

# get model
## TODO: update item model reference for fluid UIs
item replace block -30000000 0 3201 container.0 with minecraft:poisonous_potato[minecraft:custom_model_data={colors:[0]},minecraft:hide_additional_tooltip={},minecraft:lore=[],minecraft:item_name='{"translate":"fluid.mechanization.empty"}',minecraft:custom_data={mechanization:{gui_item:1b}}]
scoreboard players operation #slice mechanization.data = #max_storage mechanization.data
scoreboard players operation #slice mechanization.data /= #cons.16 mechanization.data

scoreboard players operation #model mechanization.data = #storage mechanization.data
scoreboard players operation #model mechanization.data += #slice mechanization.data
scoreboard players remove #model mechanization.data 1
scoreboard players operation #model mechanization.data /= #slice mechanization.data
execute if score #model mechanization.data matches 17.. run scoreboard players set #model mechanization.data 16

scoreboard players add #model mechanization.data 6422900
execute if score #temperature mechanization.data matches 1000.. run scoreboard players add #model mechanization.data 17
execute store result block -30000000 0 3201 Items[0].components."minecraft:custom_model_data".colors[0] int 1 run scoreboard players get #model mechanization.data

# set name & color
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"color":"white","italic":false}'
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3201 Items[{Slot:0b}].components."minecraft:item_name" set from block -30000000 0 3202 front_text.messages[0]
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"lore.mechanization.fluid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3201 Items[{Slot:0b}].components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]
execute if score #storage mechanization.data matches 1.. store result block -30000000 0 3201 Items[{Slot:0b}].components."minecraft:dyed_color".rgb int 1 run scoreboard players get #color mechanization.data
