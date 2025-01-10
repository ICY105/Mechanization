
# spawn item
execute if entity @s[tag=mechanization.fluid_tank.t1] run loot spawn ~ ~ ~ loot mechanization:machines/wooden_fluid_tank
execute if entity @s[tag=mechanization.fluid_tank.t2] run loot spawn ~ ~ ~ loot mechanization:machines/hardened_fluid_tank
execute if entity @s[tag=mechanization.fluid_tank.t3] run loot spawn ~ ~ ~ loot mechanization:machines/pressurized_fluid_tank

# copy fluid to item
data modify storage mechanization:temp list set value [0,0,0,0]
execute store result storage mechanization:temp list[0] int 1 run scoreboard players get @s fluid.storage.0
execute store result storage mechanization:temp list[1] int 1 run scoreboard players get @s fluid.storage.1

execute if score @s fluid.storage.0 matches 1.. run data modify entity @n[type=item,distance=..1] Item.components."minecraft:custom_data".mechanization.stored_fluids_amount set from storage mechanization:temp list
execute if score @s fluid.storage.0 matches 1.. run data modify entity @n[type=item,distance=..1] Item.components."minecraft:custom_data".mechanization.stored_fluids set from entity @s item.components."minecraft:custom_data".fluids
execute if score @s fluid.storage.0 matches 0 if score @s fluid.storage.1 matches 1.. run data modify entity @n[type=item,distance=..1] Item.components."minecraft:custom_data".mechanization.stored_fluids_amount set from storage mechanization:temp list
execute if score @s fluid.storage.0 matches 0 if score @s fluid.storage.1 matches 1.. run data modify entity @n[type=item,distance=..1] Item.components."minecraft:custom_data".mechanization.stored_fluids set from entity @s item.components."minecraft:custom_data".fluids

data modify storage mechanization:temp var set value "test"

execute if score @s fluid.storage.1 matches 1.. run data modify storage mechanization:temp var set from entity @s item.components."minecraft:custom_data".fluids[1].name
execute if score @s fluid.storage.1 matches 1.. run scoreboard players operation #storage mechanization.data = @s fluid.storage.1
execute if score @s fluid.storage.1 matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"lore.mechanization.stored_fluid","color":"gray","italic":false,"with":[{"score":{"name":"#storage","objective":"mechanization.data"}},{"nbt":"var","storage":"mechanization:temp","interpret":true}]}'
execute if score @s fluid.storage.1 matches 1.. run data modify entity @n[type=item,distance=..1] Item.components."minecraft:lore" insert 1 from block -30000000 0 3202 front_text.messages[0]

execute if score @s fluid.storage.0 matches 1.. run data modify storage mechanization:temp var set from entity @s item.components."minecraft:custom_data".fluids[0].name
execute if score @s fluid.storage.0 matches 1.. run scoreboard players operation #storage mechanization.data = @s fluid.storage.0
execute if score @s fluid.storage.0 matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"lore.mechanization.stored_fluid","color":"gray","italic":false,"with":[{"score":{"name":"#storage","objective":"mechanization.data"}},{"nbt":"var","storage":"mechanization:temp","interpret":true}]}'
execute if score @s fluid.storage.0 matches 1.. run data modify entity @n[type=item,distance=..1] Item.components."minecraft:lore" insert 1 from block -30000000 0 3202 front_text.messages[0]

# run break functions
function mechanization:base/utils/break_block/break_drop_inv
function fluid:v1/api/break_tank

# kill
setblock ~ ~ ~ minecraft:air
kill @s
