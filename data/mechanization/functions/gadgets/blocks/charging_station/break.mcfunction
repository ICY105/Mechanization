
data remove block -30000000 0 3201 Items
item replace block -30000000 0 3201 container.0 from entity @s container.0
execute if data block -30000000 0 3201 Items run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}

loot spawn ~ ~ ~ loot mechanization:gadgets/charging_station
function mechanization:base/utils/break_block/break_copy_data
function energy:v1/api/break_machine

execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=minecraft:item_display,tag=mechanization.charging_station.model,distance=..0.1,sort=nearest,limit=1]
execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.charging_station,distance=..0.1,sort=nearest,limit=1]
setblock ~ ~ ~ minecraft:air replace
kill @s
