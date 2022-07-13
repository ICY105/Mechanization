
summon minecraft:marker ~ ~ ~ {Tags:["mechanization.bullet", "mechanization.new", "smithed.ignore"]}
tp @e[type=minecraft:marker,tag=mechanization.bullet] ^ ^ ^2 ~ ~

scoreboard players operation @e[type=minecraft:marker,tag=mechanization.bullet] mechanization.weaponheat = #damage mechanization.data
scoreboard players operation @e[type=minecraft:marker,tag=mechanization.bullet] mechanization.firerate = #velocity mechanization.data
scoreboard players operation @e[type=minecraft:marker,tag=mechanization.bullet] mechanization.data = #range mechanization.data
execute if score #bouncy mechanization.data matches 1 run tag @e[type=marker,tag=mechanization.bullet] add mechanization.bouncy
execute if score #sonic mechanization.data matches 1 run tag @e[type=marker,tag=mechanization.bullet] add mechanization.sonic

tag @e[type=minecraft:marker,tag=mechanization.new] remove mechanization.new
