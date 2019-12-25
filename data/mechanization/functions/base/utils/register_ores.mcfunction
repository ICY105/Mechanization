
#### Copper Ore

#min Y elevation [1,255]
scoreboard players set $world.in_0 du_data 24
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set $world.in_1 du_data 64
#min number of veins [1,32]
scoreboard players set $world.in_2 du_data 12
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set $world.in_3 du_data 12
#min ores per vein [1,16]
scoreboard players set $world.in_4 du_data 4
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set $world.in_5 du_data 6
#Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation $cons.copper_ore mech_data = $world.out_0 du_data

#### Tin Ore

#min Y elevation [1,255]
scoreboard players set $world.in_0 du_data 24
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set $world.in_1 du_data 64
#min number of veins [1,32]
scoreboard players set $world.in_2 du_data 12
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set $world.in_3 du_data 12
#min ores per vein [1,16]
scoreboard players set $world.in_4 du_data 4
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set $world.in_5 du_data 6
#Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation $cons.tin_ore mech_data = $world.out_0 du_data

#### Titanium Ore

#min Y elevation [1,255]
scoreboard players set $world.in_0 du_data 1
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set $world.in_1 du_data 16
#min number of veins [1,32]
scoreboard players set $world.in_2 du_data 1
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set $world.in_3 du_data 1
#min ores per vein [1,16]
scoreboard players set $world.in_4 du_data 1
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set $world.in_5 du_data 3
#Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation $cons.titanium_ore mech_data = $world.out_0 du_data

#### Uranium Ore

#min Y elevation [1,255]
scoreboard players set $world.in_0 du_data 1
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set $world.in_1 du_data 24
#min number of veins [1,32]
scoreboard players set $world.in_2 du_data 2
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set $world.in_3 du_data 4
#min ores per vein [1,16]
scoreboard players set $world.in_4 du_data 2
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set $world.in_5 du_data 4
#Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation $cons.uranium_ore mech_data = $world.out_0 du_data

#### Emerald Ore

#min Y elevation [1,255]
scoreboard players set $world.in_0 du_data 1
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set $world.in_1 du_data 16
#min number of veins [1,32]
scoreboard players set $world.in_2 du_data 1
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players set $world.in_3 du_data 2
#min ores per vein [1,16]
scoreboard players set $world.in_4 du_data 1
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set $world.in_5 du_data 2
#Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
function du:world/registry/register_ore
scoreboard players operation $cons.emerald_ore mech_data = $world.out_0 du_data
