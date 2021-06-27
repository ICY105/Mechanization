
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
item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422900,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 1..250 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422901,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 251..500 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422902,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 501..750 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422903,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 751..1000 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422904,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 1001..1250 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422905,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 1251..1500 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422906,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 1501..1750 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422907,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 1751..2000 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422908,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 2001..2250 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422909,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 2251..2500 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422910,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 2501..2750 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422911,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 2751..3000 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422912,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 3001..3250 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422913,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 3251..3500 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422914,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 3501..3750 run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422915,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}
execute if score @s mech_fluid matches 3751.. run item replace block ~ ~ ~ container.13 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422916,HideFlags:127,display:{Name:'{"translate":"mech.liquid.water","italic":false}',color:35071}}

#steam tank
item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422900,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 1..250 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422901,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 251..500 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422902,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 501..750 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422903,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 751..1000 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422904,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 1001..1250 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422905,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 1251..1500 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422906,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 1501..1750 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422907,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 1751..2000 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422908,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 2001..2250 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422909,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 2251..2500 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422910,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 2501..2750 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422911,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 2751..3000 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422912,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 3001..3250 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422913,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 3251..3500 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422914,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 3501..3750 run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422915,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}
execute if score @s du_data matches 3751.. run item replace block ~ ~ ~ container.16 with minecraft:leather_boots{du_gui:1b,CustomModelData:6422916,HideFlags:127,display:{Name:'{"translate":"mech.liquid.steam","italic":false}',color:14540253}}

#fuel slot
execute unless score @s mech_data matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:structure_block{du_gui:1b,CustomModelData:6422900}
execute if score @s mech_data matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:structure_block{du_gui:1b,CustomModelData:6422901}
