
# main
execute unless score @s mechanization.fluid.1 matches 1..4 run scoreboard players set @s mechanization.data 0

scoreboard players operation #loop mechanization.data = #machines.cf.quarry.speed mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #loop mechanization.data = #machines.cf.quarry.speed.machine_upgrade mechanization.data

function mechanization:base/utils/redstone_active
execute if data block ~ ~ ~ Items[26] run scoreboard players set #active mechanization.data 0

execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.quarry.power mechanization.data if entity @s[scores={mechanization.fluid.1=1,mechanization.fluid.0=1..31,mechanization.fluid.2=1..31,mechanization.data=0..}] rotated 0 0 run function mechanization:machines/machines/quarry/mine_count
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.quarry.power mechanization.data if entity @s[scores={mechanization.fluid.1=2,mechanization.fluid.0=1..31,mechanization.fluid.2=1..31,mechanization.data=0..}] rotated 90 0 run function mechanization:machines/machines/quarry/mine_count
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.quarry.power mechanization.data if entity @s[scores={mechanization.fluid.1=3,mechanization.fluid.0=1..31,mechanization.fluid.2=1..31,mechanization.data=0..}] rotated 180 0 run function mechanization:machines/machines/quarry/mine_count
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.quarry.power mechanization.data if entity @s[scores={mechanization.fluid.1=4,mechanization.fluid.0=1..31,mechanization.fluid.2=1..31,mechanization.data=0..}] rotated 270 0 run function mechanization:machines/machines/quarry/mine_count

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t2
