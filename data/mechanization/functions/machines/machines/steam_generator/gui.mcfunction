
#move/clear items
data modify storage du:temp list set from block ~ ~ ~ Items
data remove storage du:temp list[{tag:{du_gui:1b}}]
data remove storage du:temp list[{Slot:3b}]
data remove storage du:temp list[{Slot:6b}]
data remove storage du:temp list[{Slot:10b}]
data remove storage du:temp list[{Slot:21b}]
data remove storage du:temp list[{Slot:24b}]

data remove block -29999999 0 1601 Items
execute if data storage du:temp list[0] run function mechanization:machines/machines/steam_generator/gui_clear
execute if data storage du:temp list[0] run function mechanization:machines/machines/steam_generator/gui_move

execute if data block -29999999 0 1601 Items[0] run loot give @p mine -29999999 0 1601 minecraft:air{drop_contents:true}

### fill in items

data remove block ~ ~ ~ Items[{tag:{du_gui:1b}}]

#water tank
item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:0,HideFlags:127,display:{Name:'{"text":"1"}',color:0}}
scoreboard players operation $temp_0 mech_data = @s mech_fluid
scoreboard players add $temp_0 mech_data 249
scoreboard players operation $temp_0 mech_data /= $cons.250 du_data
scoreboard players add $temp_0 mech_data 6422900
execute if data entity @s Item.tag.water_item.tag.ctc.traits.liquid.molten run scoreboard players add $temp_0 mech_data 17
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data
data modify storage du:temp var set from entity @s Item.tag.water_item.tag.ctc.traits.liquid.name
data modify block -29999999 0 1602 Text1 set value '{"nbt":"var","storage":"du:temp","interpret":true,"italic":false}'
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set from block -29999999 0 1602 Text1
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.color set from entity @s Item.tag.water_item.tag.ctc.traits.liquid.color

#steam tank
item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:0,HideFlags:127,display:{Name:'{"text":"1"}',color:0}}
scoreboard players operation $temp_0 mech_data = @s du_data
scoreboard players add $temp_0 mech_data 249
scoreboard players operation $temp_0 mech_data /= $cons.250 du_data
scoreboard players add $temp_0 mech_data 6422900
execute if data entity @s Item.tag.steam_item.tag.ctc.traits.liquid.molten run scoreboard players add $temp_0 mech_data 17
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data
data modify storage du:temp var set from entity @s Item.tag.steam_item.tag.ctc.traits.liquid.name
data modify block -29999999 0 1602 Text1 set value '{"nbt":"var","storage":"du:temp","interpret":true,"italic":false}'
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set from block -29999999 0 1602 Text1
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.color set from entity @s Item.tag.steam_item.tag.ctc.traits.liquid.color

#fuel slot
execute unless score @s mech_data matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:structure_block{du_gui:1b,CustomModelData:6422900,display:{Name:'{"text":""}'}}
execute if score @s mech_data matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:structure_block{du_gui:1b,CustomModelData:6422901,display:{Name:'{"text":""}'}}
