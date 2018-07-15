
execute at @s run tp @s ^ ^ ^-0.05
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @a[distance=..0.75] run function #du:place_custom_block
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @a[distance=..0.75] as @p[tag=du_right_click,distance=..9] run replaceitem entity @s[gamemode=!creative] weapon.mainhand air
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @a[distance=..0.75] run playsound minecraft:block.stone.place block @a ~ ~ ~ 1 1
