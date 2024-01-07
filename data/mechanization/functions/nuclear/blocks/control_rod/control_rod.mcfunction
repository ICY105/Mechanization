
function mechanization:base/utils/redstone_active

execute if score #active mechanization.data matches 0 if entity @s[tag=mechanization.active.redstone] run tag @s remove mechanization.active
execute if score #active mechanization.data matches 0 if entity @s[tag=mechanization.active.redstone] align xyz rotated 0 90 positioned ^ ^ ^1 as @e[tag=mechanization.control_rod,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/control_rod/chain_off
execute if score #active mechanization.data matches 0 if entity @s[tag=mechanization.active.redstone] align xyz rotated 0 -90 positioned ^ ^ ^1 as @e[tag=mechanization.control_rod,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/control_rod/chain_off

execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.active.redstone] run tag @s add mechanization.active
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.active.redstone] align xyz rotated 0 90 positioned ^ ^ ^1 as @e[tag=mechanization.control_rod,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/control_rod/chain_on
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.active.redstone] align xyz rotated 0 -90 positioned ^ ^ ^1 as @e[tag=mechanization.control_rod,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/control_rod/chain_on

execute if score #active mechanization.data matches 0 run tag @s remove mechanization.active.redstone
execute if score #active mechanization.data matches 1 run tag @s add mechanization.active.redstone

execute if entity @s[tag=!mechanization.active] run data modify entity @s item.tag.CustomModelData set value 6423202
execute if entity @s[tag=mechanization.active] run data modify entity @s item.tag.CustomModelData set value 6423001

# break
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine
