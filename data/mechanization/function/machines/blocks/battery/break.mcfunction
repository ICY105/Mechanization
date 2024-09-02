
execute if entity @s[tag=mechanization.battery.t1] run loot spawn ~ ~ ~ loot mechanization:machines/tier_1_battery
execute if entity @s[tag=mechanization.battery.t2] run loot spawn ~ ~ ~ loot mechanization:machines/tier_2_battery
execute if entity @s[tag=mechanization.battery.t3] run loot spawn ~ ~ ~ loot mechanization:machines/tier_3_battery
function mechanization:base/utils/break_block/break_copy_data

function energy:v1/api/break_machine

execute if entity @s[tag=mechanization.battery.t1] align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.tier_1_battery,distance=..0.1,sort=nearest,limit=1]
execute if entity @s[tag=mechanization.battery.t2] align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.tier_2_battery,distance=..0.1,sort=nearest,limit=1]
execute if entity @s[tag=mechanization.battery.t3] align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.tier_3_battery,distance=..0.1,sort=nearest,limit=1]

execute if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air replace
kill @s

