
data remove block -30000000 0 3201 Items
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
execute if data block -30000000 0 3201 Items run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}

loot spawn ~ ~ ~ loot mechanization:gadgets/charging_station
function mechanization:base/utils/break_copy_data

function energy:v1/api/break_machine
setblock ~ ~ ~ minecraft:air replace
kill @s
