
#apply effects
scoreboard players set $temp_0 mechanization.data 0
scoreboard players operation $temp_0 mechanization.data += @s mechanization.player.use_netherite_pickaxe
scoreboard players operation $temp_0 mechanization.data += @s mechanization.player.use_netherite_axe
scoreboard players operation $temp_0 mechanization.data += @s mechanization.player.use_netherite_shovel
scoreboard players operation $temp_0 mechanization.data += @s mechanization.player.use_netherite_hoe

execute if score $temp_0 mechanization.data matches 1.. store result score $temp_1 mechanization.data run data get entity @s SelectedItem.tag.mech_upgrades.mining_area
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches 2.. at @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] rotated as @s run function mechanization:gadgets/tools/drill/mine_area
execute if score $temp_0 mechanization.data matches 1.. if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"magnetic"} run tp @e[type=item,distance=..10] ~ ~ ~
execute if score $temp_0 mechanization.data matches 1.. if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"trash"} as @e[type=item,distance=..10] run function mechanization:gadgets/tools/drill/trash

execute if score $base.timer_20 du_data matches 0 if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"aquatic"} if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run effect give @s minecraft:haste 2 0 true
execute if score $base.timer_20 du_data matches 1 if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"illuminating"} if predicate du:location/light/level_0 run setblock ~ ~ ~ minecraft:light[level=5]

#add damage
execute store result score $in_0 mechanization.data run data get entity @s SelectedItem.tag.Damage
execute if score $in_0 mechanization.data matches 1.. run item replace block -29999999 0 1601 container.0 from entity @s weapon.mainhand
execute if score $in_0 mechanization.data matches 1.. if entity @s[gamemode=!creative] run function mechanization:gadgets/tools/damage_upgrades
execute if score $in_0 mechanization.data matches 1.. run item replace entity @s weapon.mainhand from block -29999999 0 1601 container.0
execute if score $in_0 mechanization.data matches 1.. run item modify entity @s weapon.mainhand mechanization:remove_damage

#get state
scoreboard players set $temp_0 mechanization.data 0
execute if data entity @s SelectedItem{id:"minecraft:netherite_pickaxe"} run scoreboard players set $temp_0 mechanization.data 4
execute if data entity @s SelectedItem{id:"minecraft:netherite_axe"} run scoreboard players set $temp_0 mechanization.data 3
execute if data entity @s SelectedItem{id:"minecraft:netherite_shovel"} run scoreboard players set $temp_0 mechanization.data 2
execute if data entity @s SelectedItem{id:"minecraft:netherite_hoe"} run scoreboard players set $temp_0 mechanization.data 1

#find block
scoreboard players set $in_0 mechanization.data 150
execute anchored eyes positioned ^ ^ ^ run function mechanization:gadgets/tools/drill/select_mode
