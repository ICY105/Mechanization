
# main
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.upgraded] run function mechanization:machines/blocks/fisher/normal
execute if score #active mechanization.data matches 1 if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] run function mechanization:machines/blocks/fisher/upgrade
execute if score #active mechanization.data matches 1 if entity @s[tag=mechanization.upgraded.ender] run function mechanization:machines/blocks/fisher/upgrade_ender
execute if score #active mechanization.data matches 1 if entity @s[tag=mechanization.upgraded.nether] run function mechanization:machines/blocks/fisher/upgrade_nether

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t2
