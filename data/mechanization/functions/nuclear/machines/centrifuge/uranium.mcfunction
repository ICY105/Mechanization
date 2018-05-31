tag @s add mech_active

execute if entity @s[tag=mech_active] store result score temp_0 mech_data run data get entity @s HandItems[0].tag.FuelGrade
execute if entity @s[tag=mech_active] run scoreboard players add temp_0 mech_data 2
execute if entity @s[tag=mech_active] store result entity @s HandItems[0].tag.FuelGrade int 1 run scoreboard players get temp_0 mech_data

execute if entity @s[tag=mech_active] store result score temp_1 mech_data run data get entity @s HandItems[0].tag.FuelSpent
execute if score temp_0 mech_data matches 1..2 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:2,FuelSpent:0,OreDict:["cellDepletedUranium"],Damage:98,HideFlags:6,display:{Lore:["§f1% Refined","§fDepleted"],Name:"{\"text\":\"Depleted Uranium Cell\",\"color\":\"dark_green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 50..53 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:52,FuelSpent:0,OreDict:["cellDepletedUranium"],Damage:98,HideFlags:6,display:{Lore:["§f5% Refined","§fMostely Depleted"],Name:"{\"text\":\"Depleted Uranium Cell\",\"color\":\"dark_green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 100..103 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:102,FuelSpent:0,OreDict:["cellUranium"],Damage:98,HideFlags:6,display:{Lore:["§f10% Refined","§fLow Reactor Grade"],Name:"{\"text\":\"Uranium Cell\",\"color\":\"dark_green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 200..203 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:202,FuelSpent:0,OreDict:["cellUranium"],Damage:98,HideFlags:6,display:{Lore:["§f20% Refined","§fMedium Reactor Grade"],Name:"{\"text\":\"Uranium Cell\",\"color\":\"dark_green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 300..303 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:302,FuelSpent:0,OreDict:["cellUranium"],Damage:98,HideFlags:6,display:{Lore:["§f30% Refined","§fHeavy Reactor Grade"],Name:"{\"text\":\"Uranium Cell\",\"color\":\"dark_green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 400..403 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:402,FuelSpent:0,OreDict:["cellUranium"],Damage:98,HideFlags:6,display:{Lore:["§f40% Refined","§fUnsafe Grade"],Name:"{\"text\":\"Uranium Cell\",\"color\":\"dark_green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 500..503 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:502,FuelSpent:0,OreDict:["cellUranium"],Damage:98,HideFlags:6,display:{Lore:["§f50% Refined","§fUnsafe Grade"],Name:"{\"text\":\"Uranium Cell\",\"color\":\"dark_green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 600..603 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:602,FuelSpent:0,OreDict:["cellUranium"],Damage:98,HideFlags:6,display:{Lore:["§f60% Refined","§fUnsafe Grade"],Name:"{\"text\":\"Uranium Cell\",\"color\":\"dark_green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 700..703 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:702,FuelSpent:0,OreDict:["cellEnrichedUranium"],Damage:98,HideFlags:6,display:{Lore:["§f70% Refined","§fLight Weapons Grade"],Name:"{\"text\":\"Enriched Uranium Cell\",\"color\":\"green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 800..803 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:802,FuelSpent:0,OreDict:["cellEnrichedUranium"],Damage:98,HideFlags:6,display:{Lore:["§f70% Refined","§fMedium Weapons Grade"],Name:"{\"text\":\"Enriched Uranium Cell\",\"color\":\"green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 900..903 run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:902,FuelSpent:0,OreDict:["cellEnrichedUranium"],Damage:98,HideFlags:6,display:{Lore:["§f90% Refined","§fHeavy Weapons Grade"],Name:"{\"text\":\"Enriched Uranium Cell\",\"color\":\"green\",\"italic\":false}"}}},{}]}
execute if score temp_0 mech_data matches 1000.. run data merge entity @s {HandItems:[{id:"minecraft:diamond_shovel",Count:1b,tag:{du_nerf:1b, mech_itemid: 3100, Unbreakable:1,FuelGrade:1000,FuelSpent:0,OreDict:["cellPureUranium"],Damage:98,HideFlags:6,display:{Lore:["§f100% Refined","§fUnstable Grade"],Name:"{\"text\":\"Pure Uranium-235 Cell\",\"color\":\"green\",\"italic\":false}"}}},{}]}
execute if entity @s[tag=mech_active] store result entity @s HandItems[0].tag.FuelSpent int 1 run scoreboard players get temp_1 mech_data
