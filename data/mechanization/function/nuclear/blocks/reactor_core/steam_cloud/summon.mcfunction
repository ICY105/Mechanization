
tag @s add mechanization
tag @s add mechanization.ticking
tag @s add mechanization.steam_cloud

scoreboard players operation @s mechanization.data = #heat mechanization.data
scoreboard players operation @s mechanization.data *= #cons.10 mechanization.data
scoreboard players set @s mechanization.time 40
