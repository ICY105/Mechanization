
#spawn item
execute if entity @s[tag=mech_t1_liquid_tank] run loot spawn ~ ~ ~ loot mechanization:machines/wooden_liquid_tank
execute if entity @s[tag=mech_t2_liquid_tank] run loot spawn ~ ~ ~ loot mechanization:machines/hardened_liquid_tank
execute if entity @s[tag=mech_t3_liquid_tank] run loot spawn ~ ~ ~ loot mechanization:machines/pressurized_liquid_tank

#copy liquid to item
execute if score @s mech_fluid matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.liquid_amount int 1 run scoreboard players get @s mech_fluid
execute if score @s mech_fluid matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.liquid_item set from entity @s Item.tag.tank

execute if score @s mech_fluid matches 1.. run data modify storage du:temp var set from entity @s Item.tag.tank.tag.ctc.traits.liquid.name
execute if score @s mech_fluid matches 1.. run data modify block -29999999 0 1602 Text1 set value '{"translate":"mech.lore.stored_liquid","color":"gray","italic":false,"with":[{"nbt":"var","storage":"du:temp","interpret":true}]}'
execute if score @s mech_fluid matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.display.Lore insert 1 from block -29999999 0 1602 Text1

execute if score @s mech_fluid matches 1.. run scoreboard players operation $temp_2 mech_data = @s mech_fluid
execute if score @s mech_fluid matches 1.. run data modify block -29999999 0 1602 Text1 set value '{"translate":"mech.lore.stored_liquid_amount","color":"gray","italic":false,"with":[{"score":{"name":"$temp_2","objective":"mech_data"}}]}'
execute if score @s mech_fluid matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.display.Lore insert 2 from block -29999999 0 1602 Text1

function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes

#kill
setblock ~ ~ ~ minecraft:air
kill @s
