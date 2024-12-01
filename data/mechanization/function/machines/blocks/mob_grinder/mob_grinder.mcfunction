
# spawn loot
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.mob_grinder.power mechanization.data if entity @s[tag=!mechanization.upgraded.ender] positioned ~-4 ~-1 ~-4 as @e[type=#mechanization:mob_grinder,dx=8,dy=2,dz=8,tag=!smithed.strict,tag=!smithed.block] run loot spawn ~4 ~2 ~4 kill @s
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.mob_grinder.power mechanization.data if entity @s[tag=mechanization.upgraded.nether] positioned ~-4 ~-1 ~-4 as @e[type=#mechanization:mob_grinder,dx=8,dy=2,dz=8,tag=!smithed.strict,tag=!smithed.block] run loot spawn ~4 ~2 ~4 kill @s
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.mob_grinder.power mechanization.data if entity @s[tag=mechanization.upgraded.ender] as @p run function mechanization:machines/blocks/mob_grinder/player_drop

# kill entities
scoreboard players set #killed mechanization.data 0
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.mob_grinder.power mechanization.data store result score #killed mechanization.data positioned ~-4 ~-1 ~-4 run tp @e[type=#mechanization:mob_grinder,dx=8,dy=2,dz=8,tag=!smithed.strict,tag=!smithed.block] ~ -300 ~

# power & effects
execute if score #killed mechanization.data matches 1.. run particle flame ~ ~ ~ 2 0 2 0 100
execute if score #killed mechanization.data matches 1.. run scoreboard players operation @s energy.storage -= #machines.cf.mob_grinder.power mechanization.data
execute if score #killed mechanization.data matches 1.. if entity @s[tag=mechanization.upgraded] unless score @s fluid.storage.0 matches 1.. run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"experience"}]
execute if score #killed mechanization.data matches 1.. if entity @s[tag=mechanization.upgraded] run scoreboard players operation #killed mechanization.data *= #machines.cf.mob_grinder.xp mechanization.data
execute if score #killed mechanization.data matches 1.. if entity @s[tag=mechanization.upgraded] run scoreboard players operation @s fluid.storage.0 += #killed mechanization.data

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t2
