
tag @s add player_action.click_detection
summon minecraft:villager ~ ~-1 ~ {Tags:["player_action.click_entity","player_action.new","smithed.entity","smithed.strict"],Team:"player_action.no_push",NoGravity:1b,NoAI:1,Silent:1,VillagerData:{profession:"minecraft:nothing",type:"minecraft:plains"},ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b},{Id:11,Amplifier:3,Duration:2000000,ShowParticles:0b},{Id:6,Amplifier:127,Duration:2000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000000}],Health:1000000.0f}
execute as @e[tag=player_action.new] at @s run function player_action:v1.0/player/click_detection/start_2
