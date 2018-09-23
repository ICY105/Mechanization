#d1 r0 - 6.0
#d1 r1 - 4.8
#d1 r2 - 3.6
#d1 r3 - 2.4
#d1 r4 - 1.2

#d2 r0 - 12.0
#d2 r1 - 9.6
#d2 r2 - 7.2
#d2 r3 - 4.8
#d2 r4 - 2.4

#d3 r0 - +20
#d3 r1 - 19.2
#d3 r2 - 14.4
#d3 r3 - 9.6
#d3 r4 - 4.8

effect clear @s minecraft:resistance

execute if score @s du_health matches 12..23 run effect give @s resistance 1 3 true
execute if score @s du_health matches 12..23 run effect give @s instant_damage 1 0 true
execute if score @s du_health matches 12..23 run scoreboard players remove @s du_health 12

execute if score @s du_health matches 24..35 run effect give @s resistance 1 2 true
execute if score @s du_health matches 24..35 run effect give @s instant_damage 1 0 true
execute if score @s du_health matches 24..35 run scoreboard players remove @s du_health 24

execute if score @s du_health matches 36..47 run effect give @s resistance 1 1 true
execute if score @s du_health matches 36..47 run effect give @s instant_damage 1 0 true
execute if score @s du_health matches 36..47 run scoreboard players remove @s du_health 36

execute if score @s du_health matches 48..59 run effect give @s resistance 1 0 true
execute if score @s du_health matches 48..59 run effect give @s instant_damage 1 0 true
execute if score @s du_health matches 48..59 run scoreboard players remove @s du_health 48

execute if score @s du_health matches 60..71 run effect give @s instant_damage 1 0 true
execute if score @s du_health matches 60..71 run scoreboard players remove @s du_health 60

execute if score @s du_health matches 72..95 run effect give @s resistance 1 1 true
execute if score @s du_health matches 72..95 run effect give @s instant_damage 1 1 true
execute if score @s du_health matches 72..95 run scoreboard players remove @s du_health 72

execute if score @s du_health matches 96..119 run effect give @s resistance 1 0 true
execute if score @s du_health matches 96..119 run effect give @s instant_damage 1 1 true
execute if score @s du_health matches 96..119 run scoreboard players remove @s du_health 96

execute if score @s du_health matches 120..143 run effect give @s instant_damage 1 1 true
execute if score @s du_health matches 120..143 run scoreboard players remove @s du_health 120

execute if score @s du_health matches 144..179 run effect give @s resistance 1 1 true
execute if score @s du_health matches 144..179 run effect give @s instant_damage 1 2 true
execute if score @s du_health matches 144..179 run scoreboard players remove @s du_health 144

execute if score @s du_health matches 192.. run effect give @s resistance 1 0 true
execute if score @s du_health matches 192.. run effect give @s instant_damage 1 2 true
execute if score @s du_health matches 192.. run scoreboard players remove @s du_health 192

