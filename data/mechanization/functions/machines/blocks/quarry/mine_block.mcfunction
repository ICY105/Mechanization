
execute unless loaded ~ ~ ~ run return

data remove block -30000000 0 3201 Items

scoreboard players set #result mechanization.data 0
execute if entity @s[tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] run loot insert -30000000 0 3201 mine ~ ~ ~ minecraft:diamond_pickaxe
execute if entity @s[tag=mechanization.upgraded.ender] run loot insert -30000000 0 3201 mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{lvl:1,id:"minecraft:silk_touch"}]}
execute if entity @s[tag=mechanization.upgraded.nether] run loot insert -30000000 0 3201 mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{lvl:3,id:"minecraft:fortune"}]}
execute at @s store result score #result mechanization.data run loot insert ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}
execute if score #result mechanization.data matches 1.. run scoreboard players operation @s energy.storage -= #machines.cf.quarry.power mechanization.data

execute if score #result mechanization.data matches 1.. run setblock ~ ~ ~ air replace
execute if score #result mechanization.data matches 0 if data block -30000000 0 3201 Items[0] run scoreboard players remove @s mechanization.data 1

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~ ~0.45 ~0.45 0.2 0 0 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~ ~0.45 ~-0.45 0.2 0 0 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~0.45 ~0.45 ~ 0 0 0.2 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~-0.45 ~0.45 ~ 0 0 0.2 0 3

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~ ~-0.45 ~0.45 0.2 0 0 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~ ~-0.45 ~-0.45 0.2 0 0 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~0.45 ~-0.45 ~ 0 0 0.2 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~-0.45 ~-0.45 ~ 0 0 0.2 0 3

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~0.45 ~ ~0.45 0 0.2 0 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~-0.45 ~ ~0.45 0 0.2 0 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~0.45 ~ ~-0.45 0 0.2 0 0 3
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle scrape ~-0.45 ~ ~-0.45 0 0.2 0 0 3

#move
scoreboard players add @s mechanization.data 1

#test for world bottom
scoreboard players set #result mechanization.data 1
execute unless block ~ ~-1 ~ #mechanization:empty run scoreboard players set #result mechanization.data 0
execute if score #result mechanization.data matches 1 run scoreboard players set @s mechanization.data -1
