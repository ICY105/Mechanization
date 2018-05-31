scoreboard players remove temp_0 mech_data 16
scoreboard players remove temp_1 mech_data 2
scoreboard players remove temp_2 mech_data 2

execute if block ~ ~ ~ dropper{Items:[{Slot:7b,tag:{OreDict:["gemCrystalComposite"]}}]} run scoreboard players add temp_3 mech_data 1
execute if score temp_3 mech_data matches 0 run replaceitem block ~ ~ ~ container.7 diamond{mech_itemid: 2112, HideFlags:1,Enchantments:[{id:0,lvl:0}],display: {Name: "{\"text\":\"Crystal Composite\",\"color\":\"dark_aqua\",\"italic\":false}"}, OreDict: ["gemCrystalComposite"]} 1