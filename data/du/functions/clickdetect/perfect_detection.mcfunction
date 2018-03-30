tag @s add du_click_perfect_active

tp @e[tag=du_click_villager_p,type=villager,sort=nearest,limit=1] ~ -100 ~
summon villager ~ ~ ~ {Tags:["du_click_villager_p"],NoGravity:1b,Profession:5,NoAI:1,Silent:1,Team:"du_nopush",ActiveEffects:[{Id:14,Amplifier:1,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b}]}

tag @s remove du_right_click
tag @s[scores={du_talked=1..}] add du_right_click
scoreboard players set @s du_talked 0

tag @s remove du_left_click
tag @s[scores={du_damage=1..}] add du_left_click
scoreboard players set @s du_damage 0
