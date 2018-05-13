
#Tempite Converter
execute as @e[tag=mech_ttb_converter,distance=..0.5] run summon item ~ ~ ~ {CustomName:"{\"text\":\"Tempite Converter\",\"color\":\"dark_purple\",\"italic\":false}",CustomNameVisible:1,Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,Unbreakable:1,Damage:214,HideFlags:6,display:{Name:"{\"text\":\"Tempite Converter\",\"color\":\"dark_purple\",\"italic\":false}",Lore:["§fConverts between","§fTTB tempite and kJ."]}}}}
execute as @e[tag=mech_ttb_converter,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_ttb_converter,distance=..0.5]


### TTB Machines
execute positioned ~ ~-0.25 ~ as @e[tag=crafter,distance=..0.5] at @s run function ttb:block/crafter/kill
execute positioned ~ ~-0.25 ~ as @e[tag=alchemy,distance=..0.5] at @s run function ttb:block/alchemy/kill
execute positioned ~ ~-0.25 ~ as @e[tag=amethyst_sunpad,distance=..0.5] at @s run function ttb:block/amethyst_sunpad/kill
execute positioned ~ ~-0.25 ~ as @e[tag=breaker,distance=..0.5] at @s run function ttb:block/breaker/kill
execute positioned ~ ~-0.25 ~ as @e[tag=collector,distance=..0.5] at @s run function ttb:block/collector/kill
execute positioned ~ ~-0.25 ~ as @e[tag=growth,distance=..0.5] at @s run function ttb:block/growth/kill
execute positioned ~ ~-0.25 ~ as @e[tag=magnetic,distance=..0.5] at @s run function ttb:block/magnetic/kill
execute positioned ~ ~-0.25 ~ as @e[tag=poison,distance=..0.5] at @s run function ttb:block/poison/kill
execute positioned ~ ~-0.25 ~ as @e[tag=tempite_stone,distance=..0.5] at @s run function ttb:block/tempite_stone/kill
execute positioned ~ ~-0.25 ~ as @e[tag=unity,distance=..0.5] at @s run function ttb:block/unity/kill