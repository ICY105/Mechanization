summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray_start"],Duration:0}
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~
execute as @e[tag=mech_ray_start] at @s run function mechanization:machines/tools/spawner_mover/spawner_trace

execute if score temp_0 mech_data matches 1.. run clear @s[gamemode=!creative] minecraft:iron_hoe{Unbreakable:1,Damage:4} 1

execute if score temp_0 mech_data matches 1 run give @s iron_hoe{mech_itemid: 2204, Unbreakable:1, Damage:5,du_click_detect:1b,SpawnerType:1,HideFlags:6,display:{Name:"{\"text\":\"Spawner Mover\",\"color\":\"red\",\"italic\":false}",Lore:["§fCurrently Holding:","§fZombie Spawner"]}}
execute if score temp_0 mech_data matches 2 run give @s iron_hoe{mech_itemid: 2204, Unbreakable:1, Damage:5,du_click_detect:1b,SpawnerType:2,HideFlags:6,display:{Name:"{\"text\":\"Spawner Mover\",\"color\":\"red\",\"italic\":false}",Lore:["§fCurrently Holding:","§fSkeleton Spawner"]}}
execute if score temp_0 mech_data matches 3 run give @s iron_hoe{mech_itemid: 2204, Unbreakable:1, Damage:5,du_click_detect:1b,SpawnerType:3,HideFlags:6,display:{Name:"{\"text\":\"Spawner Mover\",\"color\":\"red\",\"italic\":false}",Lore:["§fCurrently Holding:","§fSpider Spawner"]}}
execute if score temp_0 mech_data matches 4 run give @s iron_hoe{mech_itemid: 2204, Unbreakable:1, Damage:5,du_click_detect:1b,SpawnerType:4,HideFlags:6,display:{Name:"{\"text\":\"Spawner Mover\",\"color\":\"red\",\"italic\":false}",Lore:["§fCurrently Holding:","§fCave Spider Spawner"]}}
execute if score temp_0 mech_data matches 5 run give @s iron_hoe{mech_itemid: 2204, Unbreakable:1, Damage:5,du_click_detect:1b,SpawnerType:5,HideFlags:6,display:{Name:"{\"text\":\"Spawner Mover\",\"color\":\"red\",\"italic\":false}",Lore:["§fCurrently Holding:","§fBlaze Spawner"]}}
execute if score temp_0 mech_data matches 6 run give @s iron_hoe{mech_itemid: 2204, Unbreakable:1, Damage:5,du_click_detect:1b,SpawnerType:6,HideFlags:6,display:{Name:"{\"text\":\"Spawner Mover\",\"color\":\"red\",\"italic\":false}",Lore:["§fCurrently Holding:","§fSilverfish Spawner"]}}
