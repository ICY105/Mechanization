execute if entity @s[tag=!du_click_normal_active] run summon villager ~ ~ ~ {Tags:["du_click_villager"],NoGravity:1b,Profession:5,NoAI:1,Silent:1,Team:"du_nopush",ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1000000}],Health:1000000.0f}
tag @s add du_click_normal_active

execute if entity @s[tag=!du_moving] run tp @e[tag=du_click_villager,type=villager,sort=nearest,limit=1] ~ ~1 ~
execute if entity @s[tag=du_moving] run tp @e[tag=du_click_villager,type=villager,sort=nearest,limit=1] ^ ^1 ^1.5

tag @s remove du_right_click
tag @s[scores={du_talked=1..}] add du_right_click
scoreboard players set @s du_talked 0

tag @s remove du_left_click
tag @s[scores={du_damage=1..}] add du_left_click
scoreboard players set @s du_damage 0
