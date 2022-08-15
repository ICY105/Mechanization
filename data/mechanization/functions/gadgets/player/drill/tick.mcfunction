
#apply effects
scoreboard players set #used mechanization.data 0
scoreboard players operation #used mechanization.data += @s mechanization.use_pick
scoreboard players operation #used mechanization.data += @s mechanization.use_axe
scoreboard players operation #used mechanization.data += @s mechanization.use_shovel
scoreboard players operation #used mechanization.data += @s mechanization.use_hoe

execute if score #used mechanization.data matches 1.. store result score #mining_area mechanization.data run data get entity @s SelectedItem.tag.mechanization.upgrades.mining_area
execute if score #used mechanization.data matches 1.. if score #mining_area mechanization.data matches 2.. at @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] rotated as @s run function mechanization:gadgets/player/drill/mine_area
execute if score #used mechanization.data matches 1.. if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"magnetic"} run tp @e[type=item,distance=..10] ~ ~ ~
execute if score #used mechanization.data matches 1.. if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"trash"} as @e[type=item,distance=..10] run function mechanization:gadgets/player/drill/trash

execute if score #timer.20 mechanization.data matches 0 if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mech_upgrade{effect:"aquatic"} if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run effect give @s minecraft:haste 2 0 true
execute if score #timer.20 mechanization.data matches 1 if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mech_upgrade{effect:"illuminating"} if predicate mechanization:in_darkness run setblock ~ ~ ~ minecraft:light[level=5]

#add damage
execute store result score #damage mechanization.data run data get entity @s SelectedItem.tag.Damage
execute if score #damage mechanization.data matches 1.. run item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
execute if score #damage mechanization.data matches 1.. if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #damage mechanization.data matches 1.. run function mechanization:gadgets/player/drill/check_enchantments
execute if score #damage mechanization.data matches 1.. run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
execute if score #damage mechanization.data matches 1.. run item modify entity @s weapon.mainhand mechanization:remove_damage

#get state
scoreboard players set #tool mechanization.data 0
execute if data entity @s SelectedItem{id:"minecraft:netherite_pickaxe"} run scoreboard players set #tool mechanization.data 4
execute if data entity @s SelectedItem{id:"minecraft:netherite_axe"} run scoreboard players set #tool mechanization.data 3
execute if data entity @s SelectedItem{id:"minecraft:netherite_shovel"} run scoreboard players set #tool mechanization.data 2
execute if data entity @s SelectedItem{id:"minecraft:netherite_hoe"} run scoreboard players set #tool mechanization.data 1

#find block
scoreboard players set #loop mechanization.data 150
execute anchored eyes positioned ^ ^ ^ run function mechanization:gadgets/player/drill/select_mode
