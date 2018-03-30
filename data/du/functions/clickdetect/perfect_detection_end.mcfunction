tp @e[tag=du_click_villager_p,type=villager,sort=nearest,limit=1] ~ -100 ~
execute positioned ~ -100 ~ run kill @e[tag=du_click_villager_p,type=villager,distance=..10]

tag @s remove du_click_perfect_active
tag @s remove du_right_click
tag @s remove du_left_click