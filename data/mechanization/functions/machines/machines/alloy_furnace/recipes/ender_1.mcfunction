scoreboard players remove temp_0 mech_data 32
scoreboard players remove temp_1 mech_data 4
scoreboard players remove temp_2 mech_data 32

execute if block ~ ~ ~ dropper{Items:[{Slot:7b,tag:{OreDict:["ingotEnder"]}}]} run scoreboard players add temp_3 mech_data 4
execute if score temp_3 mech_data matches 0 run replaceitem block ~ ~ ~ container.7 firework_star{mech_itemid: 2113, Explosion: {Colors: [I; 8388727]}, HideFlags: 32, display: {Name: "{\"translate\":\"mech.item.ender_ingot\",\"color\":\"dark_purple\",\"italic\":false}"}, OreDict: ["ingotEnder"]} 4