
#init output
#0: unknown
#1: sword
#2: axe
#3: pickaxe
#4: shovel
#5: hoe
#6: helmet
#7: chestplate
#8: leggings
#9: boots
#10: bow
#11: crossbow
#12: trident
#13: fishing rod
scoreboard players set #item_type mechanization.data -1

#set output
execute if data storage mechanization:temp obj{id:"minecraft:elytra"} run scoreboard players set #item_type mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:carrot_on_a_stick"} run scoreboard players set #item_type mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:warped_fungus_on_a_stick"} run scoreboard players set #item_type mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:flint_and_steel"} run scoreboard players set #item_type mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:shield"} run scoreboard players set #item_type mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:shears"} run scoreboard players set #item_type mechanization.data 3

execute if data storage mechanization:temp obj{id:"minecraft:wooden_sword"} run scoreboard players set #item_type mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:golden_sword"} run scoreboard players set #item_type mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:stone_sword"} run scoreboard players set #item_type mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:iron_sword"} run scoreboard players set #item_type mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:diamond_sword"} run scoreboard players set #item_type mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:netherite_sword"} run scoreboard players set #item_type mechanization.data 1

execute if data storage mechanization:temp obj{id:"minecraft:wooden_axe"} run scoreboard players set #item_type mechanization.data 2
execute if data storage mechanization:temp obj{id:"minecraft:golden_axe"} run scoreboard players set #item_type mechanization.data 2
execute if data storage mechanization:temp obj{id:"minecraft:stone_axe"} run scoreboard players set #item_type mechanization.data 2
execute if data storage mechanization:temp obj{id:"minecraft:iron_axe"} run scoreboard players set #item_type mechanization.data 2
execute if data storage mechanization:temp obj{id:"minecraft:diamond_axe"} run scoreboard players set #item_type mechanization.data 2
execute if data storage mechanization:temp obj{id:"minecraft:netherite_axe"} run scoreboard players set #item_type mechanization.data 2

execute if data storage mechanization:temp obj{id:"minecraft:wooden_pickaxe"} run scoreboard players set #item_type mechanization.data 3
execute if data storage mechanization:temp obj{id:"minecraft:golden_pickaxe"} run scoreboard players set #item_type mechanization.data 3
execute if data storage mechanization:temp obj{id:"minecraft:stone_pickaxe"} run scoreboard players set #item_type mechanization.data 3
execute if data storage mechanization:temp obj{id:"minecraft:iron_pickaxe"} run scoreboard players set #item_type mechanization.data 3
execute if data storage mechanization:temp obj{id:"minecraft:diamond_pickaxe"} run scoreboard players set #item_type mechanization.data 3
execute if data storage mechanization:temp obj{id:"minecraft:netherite_pickaxe"} run scoreboard players set #item_type mechanization.data 3

execute if data storage mechanization:temp obj{id:"minecraft:wooden_shovel"} run scoreboard players set #item_type mechanization.data 4
execute if data storage mechanization:temp obj{id:"minecraft:golden_shovel"} run scoreboard players set #item_type mechanization.data 4
execute if data storage mechanization:temp obj{id:"minecraft:stone_shovel"} run scoreboard players set #item_type mechanization.data 4
execute if data storage mechanization:temp obj{id:"minecraft:iron_shovel"} run scoreboard players set #item_type mechanization.data 4
execute if data storage mechanization:temp obj{id:"minecraft:diamond_shovel"} run scoreboard players set #item_type mechanization.data 4
execute if data storage mechanization:temp obj{id:"minecraft:netherite_shovel"} run scoreboard players set #item_type mechanization.data 4

execute if data storage mechanization:temp obj{id:"minecraft:wooden_hoe"} run scoreboard players set #item_type mechanization.data 5
execute if data storage mechanization:temp obj{id:"minecraft:golden_hoe"} run scoreboard players set #item_type mechanization.data 5
execute if data storage mechanization:temp obj{id:"minecraft:stone_hoe"} run scoreboard players set #item_type mechanization.data 5
execute if data storage mechanization:temp obj{id:"minecraft:iron_hoe"} run scoreboard players set #item_type mechanization.data 5
execute if data storage mechanization:temp obj{id:"minecraft:diamond_hoe"} run scoreboard players set #item_type mechanization.data 5
execute if data storage mechanization:temp obj{id:"minecraft:netherite_hoe"} run scoreboard players set #item_type mechanization.data 5

execute if data storage mechanization:temp obj{id:"minecraft:turtle_helmet"} run scoreboard players set #item_type mechanization.data 6
execute if data storage mechanization:temp obj{id:"minecraft:leather_helmet"} run scoreboard players set #item_type mechanization.data 6
execute if data storage mechanization:temp obj{id:"minecraft:golden_helmet"} run scoreboard players set #item_type mechanization.data 6
execute if data storage mechanization:temp obj{id:"minecraft:chain_helmet"} run scoreboard players set #item_type mechanization.data 6
execute if data storage mechanization:temp obj{id:"minecraft:iron_helmet"} run scoreboard players set #item_type mechanization.data 6
execute if data storage mechanization:temp obj{id:"minecraft:diamond_helmet"} run scoreboard players set #item_type mechanization.data 6
execute if data storage mechanization:temp obj{id:"minecraft:netherite_helmet"} run scoreboard players set #item_type mechanization.data 6

execute if data storage mechanization:temp obj{id:"minecraft:leather_chestplate"} run scoreboard players set #item_type mechanization.data 7
execute if data storage mechanization:temp obj{id:"minecraft:golden_chestplate"} run scoreboard players set #item_type mechanization.data 7
execute if data storage mechanization:temp obj{id:"minecraft:chain_chestplate"} run scoreboard players set #item_type mechanization.data 7
execute if data storage mechanization:temp obj{id:"minecraft:iron_chestplate"} run scoreboard players set #item_type mechanization.data 7
execute if data storage mechanization:temp obj{id:"minecraft:diamond_chestplate"} run scoreboard players set #item_type mechanization.data 7
execute if data storage mechanization:temp obj{id:"minecraft:netherite_chestplate"} run scoreboard players set #item_type mechanization.data 7

execute if data storage mechanization:temp obj{id:"minecraft:leather_leggings"} run scoreboard players set #item_type mechanization.data 8
execute if data storage mechanization:temp obj{id:"minecraft:golden_leggings"} run scoreboard players set #item_type mechanization.data 8
execute if data storage mechanization:temp obj{id:"minecraft:chain_leggings"} run scoreboard players set #item_type mechanization.data 8
execute if data storage mechanization:temp obj{id:"minecraft:iron_leggings"} run scoreboard players set #item_type mechanization.data 8
execute if data storage mechanization:temp obj{id:"minecraft:diamond_leggings"} run scoreboard players set #item_type mechanization.data 8
execute if data storage mechanization:temp obj{id:"minecraft:netherite_leggings"} run scoreboard players set #item_type mechanization.data 8

execute if data storage mechanization:temp obj{id:"minecraft:leather_boots"} run scoreboard players set #item_type mechanization.data 9
execute if data storage mechanization:temp obj{id:"minecraft:golden_boots"} run scoreboard players set #item_type mechanization.data 9
execute if data storage mechanization:temp obj{id:"minecraft:chain_boots"} run scoreboard players set #item_type mechanization.data 9
execute if data storage mechanization:temp obj{id:"minecraft:iron_boots"} run scoreboard players set #item_type mechanization.data 9
execute if data storage mechanization:temp obj{id:"minecraft:diamond_boots"} run scoreboard players set #item_type mechanization.data 9
execute if data storage mechanization:temp obj{id:"minecraft:netherite_boots"} run scoreboard players set #item_type mechanization.data 9

execute if data storage mechanization:temp obj{id:"minecraft:bow"} run scoreboard players set #item_type mechanization.data 10
execute if data storage mechanization:temp obj{id:"minecraft:crossbow"} run scoreboard players set #item_type mechanization.data 11
execute if data storage mechanization:temp obj{id:"minecraft:trident"} run scoreboard players set #item_type mechanization.data 12
execute if data storage mechanization:temp obj{id:"minecraft:fishing_rod"} run scoreboard players set #item_type mechanization.data 13
