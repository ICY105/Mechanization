
#installed
execute if score du_ver du_data matches 2000001.. run scoreboard players set install mech_data 0

#set up ore gen
scoreboard objectives add mech_data dummy
scoreboard players set worldgen du_data 1

#set up mech data storage
execute unless data block -29999999 0 1600 RecordItem.tag.mech run data modify block -29999999 0 1600 RecordItem.tag.mech set value {quantum_network:[],teleporters:[]}

#### Copper Ore

#min Y elevation [1,255]
scoreboard players set in_0 du_data 24
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set in_1 du_data 64
#min number of veins [1,32]
scoreboard players set in_2 du_data 10
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set in_3 du_data 10
#min ores per vein [1,16]
scoreboard players set in_4 du_data 4
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set in_5 du_data 6
#Dimension id [-1,1]
scoreboard players set in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation copper_ore mech_data = out_0 du_data

#### Tin Ore

#min Y elevation [1,255]
scoreboard players set in_0 du_data 24
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set in_1 du_data 64
#min number of veins [1,32]
scoreboard players set in_2 du_data 9
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set in_3 du_data 9
#min ores per vein [1,16]
scoreboard players set in_4 du_data 4
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set in_5 du_data 6
#Dimension id [-1,1]
scoreboard players set in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation tin_ore mech_data = out_0 du_data

#### Titanium Ore

#min Y elevation [1,255]
scoreboard players set in_0 du_data 1
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set in_1 du_data 16
#min number of veins [1,32]
scoreboard players set in_2 du_data 1
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set in_3 du_data 1
#min ores per vein [1,16]
scoreboard players set in_4 du_data 1
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set in_5 du_data 3
#Dimension id [-1,1]
scoreboard players set in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation titanium_ore mech_data = out_0 du_data

#### Uranium Ore

#min Y elevation [1,255]
scoreboard players set in_0 du_data 1
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set in_1 du_data 24
#min number of veins [1,32]
scoreboard players set in_2 du_data 2
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set in_3 du_data 3
#min ores per vein [1,16]
scoreboard players set in_4 du_data 2
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set in_5 du_data 4
#Dimension id [-1,1]
scoreboard players set in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation uranium_ore mech_data = out_0 du_data

#### Emerald Ore

#min Y elevation [1,255]
scoreboard players set in_0 du_data 1
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set in_1 du_data 16
#min number of veins [1,32]
scoreboard players set in_2 du_data 1
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set in_3 du_data 2
#min ores per vein [1,16]
scoreboard players set in_4 du_data 1
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set in_5 du_data 2
#Dimension id [-1,1]
scoreboard players set in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation emerald_ore mech_data = out_0 du_data
