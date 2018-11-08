scoreboard players operation temp_0 du_data = @s du_uuid

execute if entity @s[tag=!du_click_active] run summon villager ~ ~ ~ {Tags:["du_click_villager","du_click_1"],NoGravity:1b,Profession:5,NoAI:1,Silent:1,Team:"du_nopush",ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1000000}],Health:1000000.0f}
execute if entity @s[tag=!du_click_active] run summon villager ~ ~ ~ {Tags:["du_click_villager","du_click_2"],NoGravity:1b,Profession:5,NoAI:1,Silent:1,Team:"du_nopush",ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1000000}],Health:1000000.0f}
execute if entity @s[tag=!du_click_active] run summon villager ~ ~ ~ {Tags:["du_click_villager","du_click_3"],NoGravity:1b,Profession:5,NoAI:1,Silent:1,Team:"du_nopush",ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1000000}],Health:1000000.0f}
execute if entity @s[tag=!du_click_active] as @e[type=villager,tag=du_click_villager] unless score @s du_data matches ..2147483647 run scoreboard players operation @s du_data = temp_0 du_data

tag @s add du_click_active

execute if entity @s[tag=!du_moving] as @e[tag=du_click_villager,type=villager] if score @s du_data = temp_0 du_data run tp @s ~ ~1 ~
execute if entity @s[tag=du_moving] as @e[tag=du_click_villager,type=villager,tag=du_click_1] if score @s du_data = temp_0 du_data positioned ~ ~0.5 ~ run tp @s ^0.5 ^ ^1
execute if entity @s[tag=du_moving] as @e[tag=du_click_villager,type=villager,tag=du_click_2] if score @s du_data = temp_0 du_data positioned ~ ~0.5 ~ run tp @s ^ ^ ^1.5
execute if entity @s[tag=du_moving] as @e[tag=du_click_villager,type=villager,tag=du_click_3] if score @s du_data = temp_0 du_data positioned ~ ~0.5 ~ run tp @s ^-0.5 ^ ^1

tag @s remove du_right_click
tag @s[scores={du_talked=1..}] add du_right_click

tag @s remove du_left_click
tag @s[tag=du_hit_entity] add du_left_click

