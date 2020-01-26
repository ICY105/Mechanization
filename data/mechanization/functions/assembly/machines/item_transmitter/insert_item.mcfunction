
execute in minecraft:overworld run data modify storage du:temp object set from block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from storage du:temp object

execute if score @s mech_data matches 0 positioned ~01 ~ ~ run loot insert ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if score @s mech_data matches 1 positioned ~ ~ ~-1 run loot insert ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if score @s mech_data matches 2 positioned ~-1 ~ ~ run loot insert ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if score @s mech_data matches 3 positioned ~ ~ ~01 run loot insert ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if score @s mech_data matches 4 positioned ~ ~-1 ~ run loot insert ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if score @s mech_data matches 5 positioned ~ ~01 ~ run loot insert ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}

scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data -1
