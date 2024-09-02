
# main
execute unless score @s player_action.y matches 1..4 run scoreboard players set @s mechanization.data 0

scoreboard players operation #loop mechanization.data = #machines.cf.quarry.speed mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #loop mechanization.data = #machines.cf.quarry.speed.machine_upgrade mechanization.data

function mechanization:base/utils/redstone_active
execute if data block ~ ~ ~ Items[26] run scoreboard players set #active mechanization.data 0

execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.quarry.power mechanization.data if entity @s[scores={player_action.y=1,player_action.x=1..31,player_action.z=1..31,mechanization.data=0..}] rotated 0 0 run function mechanization:machines/blocks/quarry/mine_count
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.quarry.power mechanization.data if entity @s[scores={player_action.y=2,player_action.x=1..31,player_action.z=1..31,mechanization.data=0..}] rotated 90 0 run function mechanization:machines/blocks/quarry/mine_count
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.quarry.power mechanization.data if entity @s[scores={player_action.y=3,player_action.x=1..31,player_action.z=1..31,mechanization.data=0..}] rotated 180 0 run function mechanization:machines/blocks/quarry/mine_count
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.quarry.power mechanization.data if entity @s[scores={player_action.y=4,player_action.x=1..31,player_action.z=1..31,mechanization.data=0..}] rotated 270 0 run function mechanization:machines/blocks/quarry/mine_count

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t2
