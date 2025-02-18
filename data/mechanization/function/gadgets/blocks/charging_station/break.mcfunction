
data remove block -30000000 0 3201 Items
execute on passengers run item replace block -30000000 0 3201 container.0 from entity @s container.0
execute on passengers run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

loot spawn ~ ~ ~ loot mechanization:gadgets/charging_station
function mechanization:base/utils/break_block/break_copy_data
function energy:v1/api/break_machine

execute on passengers run kill @s
execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.charging_station,distance=..0.1,sort=nearest,limit=1]
setblock ~ ~ ~ minecraft:air replace
kill @s
