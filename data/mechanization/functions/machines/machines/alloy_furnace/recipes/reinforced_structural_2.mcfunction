scoreboard players remove temp_0 mech_data 2
scoreboard players remove temp_1 mech_data 2
scoreboard players remove temp_2 mech_data 1

execute if block ~ ~ ~ dropper{Items:[{Slot:7b,tag:{OreDict:["ingotReinforcedStructural"]}}]} run scoreboard players add temp_3 mech_data 1
execute if score temp_3 mech_data matches 0 run replaceitem block ~ ~ ~ container.7 firework_star{mech_itemid: 2110, Explosion: {Colors: [I; 5258420]}, HideFlags: 32, display: {Name: "{\"text\":\"Reinforced Structural Ingot\",\"color\":\"dark_aqua\",\"italic\":false}"}, OreDict: ["ingotReinforcedStructural"]} 1