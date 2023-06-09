
# spawn item
execute if entity @s[tag=mechanization.fluid_tank.t1] run loot spawn ~ ~ ~ loot mechanization:machines/wooden_liquid_tank
execute if entity @s[tag=mechanization.fluid_tank.t2] run loot spawn ~ ~ ~ loot mechanization:machines/hardened_liquid_tank
execute if entity @s[tag=mechanization.fluid_tank.t3] run loot spawn ~ ~ ~ loot mechanization:machines/pressurized_liquid_tank

# copy fluid to item
execute if score @s fluid.storage.0 matches 1.. run data modify storage mechanization:temp list set value [0,0,0,0]
execute if score @s fluid.storage.0 matches 1.. store result storage mechanization:temp list[0] int 1 run scoreboard players get @s fluid.storage.0
execute if score @s fluid.storage.0 matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.stored_fluids_amount set from storage mechanization:temp list
execute if score @s fluid.storage.0 matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.stored_fluids set from entity @s item.tag.fluids

execute if score @s fluid.storage.0 matches 1.. run data modify storage mechanization:temp var set from entity @s item.tag.fluids[0].Name
execute if score @s fluid.storage.0 matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"lore.mechanization.stored_fluid","color":"gray","italic":false,"with":[{"nbt":"var","storage":"mechanization:temp","interpret":true}]}'
execute if score @s fluid.storage.0 matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.display.Lore insert 1 from block -30000000 0 3202 front_text.messages[0]

execute if score @s fluid.storage.0 matches 1.. run scoreboard players operation #storage mechanization.data = @s fluid.storage.0
execute if score @s fluid.storage.0 matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"lore.mechanization.fluid_amount","color":"gray","italic":false,"with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score @s fluid.storage.0 matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.display.Lore insert 2 from block -30000000 0 3202 front_text.messages[0]

# run break functions
function mechanization:base/utils/break_block/break_drop_inv
function fluid:v1/api/break_tank

# kill
setblock ~ ~ ~ minecraft:air
kill @s
