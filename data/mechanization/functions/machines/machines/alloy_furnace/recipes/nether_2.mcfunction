scoreboard players remove temp_0 mech_data 1
scoreboard players remove temp_1 mech_data 4
scoreboard players remove temp_2 mech_data 4

execute if block ~ ~ ~ dropper{Items:[{Slot:7b,tag:{OreDict:["ingotNether"]}}]} run scoreboard players add temp_3 mech_data 4
execute if score temp_3 mech_data matches 0 run replaceitem block ~ ~ ~ container.7 firework_star{mech_itemid: 2114, Explosion: {Colors: [I; 9175040]}, HideFlags: 32, display: {Name: "{\"text\":\"Nether Ingot\",\"color\":\"dark_red\",\"italic\":false}"}, OreDict: ["ingotNether"]} 4