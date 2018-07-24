replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 4300, OreDict:["upgradeBase"],Unbreakable:1,Damage:158,HideFlags:6,display:{Name:"{\"translate\":\"mech.item.upgade_base\",\"color\":\"dark_red\",\"italic\":false}"}}
scoreboard players set out_4 du_data 16

scoreboard players set temp_0 du_data 4
execute store success block ~ ~ ~ Items[16].Count byte 4 if entity @s
