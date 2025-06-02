
# main
function mechanization:base/utils/redstone_active
execute if score @s energy.storage matches ..319 if score #active mechanization.data matches 1 run data merge block ~ ~ ~ {RequiredPlayerRange: 16s, MaxSpawnDelay: 800s, MinSpawnDelay: 200s}
execute if score @s energy.storage matches ..319 run scoreboard players set #active mechanization.data 0

execute if score #active mechanization.data matches 0 run data merge block ~ ~ ~ {RequiredPlayerRange: 0s, MaxSpawnDelay: 800s, MinSpawnDelay: 200s}
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.upgraded] run data merge block ~ ~ ~ {RequiredPlayerRange: 24s, MaxSpawnDelay: 401s, MinSpawnDelay: 400s}
execute if score #active mechanization.data matches 1 if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] run data merge block ~ ~ ~ {RequiredPlayerRange: 24s, MaxSpawnDelay: 200s, MinSpawnDelay: 200s}
execute if score #active mechanization.data matches 1 if entity @s[tag=mechanization.upgraded.ender] run data merge block ~ ~ ~ {RequiredPlayerRange: 48s, MaxSpawnDelay: 200s, MinSpawnDelay: 200s}
execute if score #active mechanization.data matches 1 if entity @s[tag=mechanization.upgraded.nether] run data merge block ~ ~ ~ {RequiredPlayerRange: 24s, MaxSpawnDelay: 100s, MinSpawnDelay: 100s}

execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.upgraded.ender] if entity @p[distance=..25] run scoreboard players remove @s energy.storage 320
execute if score #active mechanization.data matches 1 if entity @s[tag=mechanization.upgraded.ender] if entity @p[distance=..49] run scoreboard players remove @s energy.storage 320

# cleanup
execute unless block ~ ~ ~ minecraft:spawner run function mechanization:base/utils/break_block/break_machine_t3
