
scoreboard players set #temp block_utils.data 0

#self powered
function block_utils:v1.1/redstone/is_powered
execute if score #out block_utils.data matches 1 run scoreboard players set #temp block_utils.data 1

#other powered
execute if score #temp block_utils.data matches 0 positioned ~ ~1 ~ unless block ~ ~ ~ #block_utils:v1.1/transparent run function block_utils:v1.1/redstone/is_powered
execute if score #temp block_utils.data matches 0 if score #out block_utils.data matches 1 run scoreboard players set #temp block_utils.data 1

execute if score #temp block_utils.data matches 0 positioned ~ ~-1 ~ unless block ~ ~ ~ #block_utils:v1.1/transparent run function block_utils:v1.1/redstone/is_powered
execute if score #temp block_utils.data matches 0 if score #out block_utils.data matches 1 run scoreboard players set #temp block_utils.data 1

execute if score #temp block_utils.data matches 0 positioned ~1 ~ ~ unless block ~ ~ ~ #block_utils:v1.1/transparent run function block_utils:v1.1/redstone/is_powered
execute if score #temp block_utils.data matches 0 if score #out block_utils.data matches 1 run scoreboard players set #temp block_utils.data 1

execute if score #temp block_utils.data matches 0 positioned ~-1 ~ ~ unless block ~ ~ ~ #block_utils:v1.1/transparent run function block_utils:v1.1/redstone/is_powered
execute if score #temp block_utils.data matches 0 if score #out block_utils.data matches 1 run scoreboard players set #temp block_utils.data 1

execute if score #temp block_utils.data matches 0 positioned ~ ~ ~1 unless block ~ ~ ~ #block_utils:v1.1/transparent run function block_utils:v1.1/redstone/is_powered
execute if score #temp block_utils.data matches 0 if score #out block_utils.data matches 1 run scoreboard players set #temp block_utils.data 1

execute if score #temp block_utils.data matches 0 positioned ~ ~ ~-1 unless block ~ ~ ~ #block_utils:v1.1/transparent run function block_utils:v1.1/redstone/is_powered
execute if score #temp block_utils.data matches 0 if score #out block_utils.data matches 1 run scoreboard players set #temp block_utils.data 1

### Self Active

#dynamic
execute if score #temp block_utils.data matches 0 positioned ~ ~01 ~ if block ~ ~ ~ #block_utils:v1.1/weak_power_top if predicate block_utils:v1.1/is_emitting_signal unless block ~ ~ ~ minecraft:redstone_torch run scoreboard players set #temp block_utils.data 1
execute if score #temp block_utils.data matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #block_utils:v1.1/weak_power_bottom if predicate block_utils:v1.1/is_emitting_signal run scoreboard players set #temp block_utils.data 1
execute if score #temp block_utils.data matches 0 positioned ~01 ~ ~ if block ~ ~ ~ #block_utils:v1.1/weak_power_side if predicate block_utils:v1.1/is_emitting_signal run scoreboard players set #temp block_utils.data 1
execute if score #temp block_utils.data matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ #block_utils:v1.1/weak_power_side if predicate block_utils:v1.1/is_emitting_signal run scoreboard players set #temp block_utils.data 1
execute if score #temp block_utils.data matches 0 positioned ~ ~ ~01 if block ~ ~ ~ #block_utils:v1.1/weak_power_side if predicate block_utils:v1.1/is_emitting_signal run scoreboard players set #temp block_utils.data 1
execute if score #temp block_utils.data matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ #block_utils:v1.1/weak_power_side if predicate block_utils:v1.1/is_emitting_signal run scoreboard players set #temp block_utils.data 1

#redstone torch
execute if block ~ ~1 ~ minecraft:redstone_wall_torch[lit=true] run scoreboard players set #temp block_utils.data 1
execute if block ~1 ~ ~ #block_utils:v1.1/redstone_torch[lit=true] run scoreboard players set #temp block_utils.data 1
execute if block ~-1 ~ ~ #block_utils:v1.1/redstone_torch[lit=true] run scoreboard players set #temp block_utils.data 1
execute if block ~ ~ ~1 #block_utils:v1.1/redstone_torch[lit=true] run scoreboard players set #temp block_utils.data 1
execute if block ~ ~ ~-1 #block_utils:v1.1/redstone_torch[lit=true] run scoreboard players set #temp block_utils.data 1

scoreboard players operation #out block_utils.data = #temp block_utils.data
