
loot spawn ~ ~ ~ loot mechanization:machines/spawner_controller
execute if block ~ ~ ~ minecraft:spawner run data merge block ~ ~ ~ {RequiredPlayerRange: 16s, MaxSpawnDelay: 800s, MinSpawnDelay: 200s, Delay: 600s}
function mechanization:base/utils/break_block/break_copy_data

function energy:v1/api/break_machine
kill @s
