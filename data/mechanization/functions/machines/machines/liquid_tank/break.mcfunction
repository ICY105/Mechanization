
#spawn item
execute if entity @s[tag=mechanization.liquid_tank.t1] run loot spawn ~ ~ ~ loot mechanization:machines/wooden_liquid_tank
execute if entity @s[tag=mechanization.liquid_tank.t2] run loot spawn ~ ~ ~ loot mechanization:machines/hardened_liquid_tank
execute if entity @s[tag=mechanization.liquid_tank.t3] run loot spawn ~ ~ ~ loot mechanization:machines/pressurized_liquid_tank

#copy liquid to item
execute if score @s mechanization.fluid.0 matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.liquid_0.amount int 1 run scoreboard players get @s mechanization.fluid.0
execute if score @s mechanization.fluid.0 matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.liquid_0.item set from entity @s Item.tag.tank

execute if score @s mechanization.fluid.0 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.tank.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.stored_liquid","color":"gray","italic":false,"with":[{"nbt":"var","storage":"mechanization:temp","interpret":true}]}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.display.Lore insert 1 from block -30000000 0 3202 Text1

execute if score @s mechanization.fluid.0 matches 1.. run scoreboard players operation $temp_2 mechanization.data = @s mechanization.fluid.0
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.stored_liquid_amount","color":"gray","italic":false,"with":[{"score":{"name":"$temp_2","objective":"mechanization.data"}}]}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.display.Lore insert 2 from block -30000000 0 3202 Text1

function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes

#kill
setblock ~ ~ ~ minecraft:air
kill @s
