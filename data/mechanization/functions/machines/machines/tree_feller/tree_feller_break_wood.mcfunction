
scoreboard players remove #loop mechanization.data 1
execute if entity @s[tag=!mechanization.upgraded.nether] run loot spawn ~ ~1 ~ mine ~ ~ ~
execute if entity @s[tag=mechanization.upgraded.nether] run summon item ~ ~1 ~ {id:"minecraft:charcoal", Count:1b}
setblock ~ ~ ~ minecraft:air

scoreboard players remove #radius mechanization.data 1
execute if score #radius mechanization.data matches 1.. positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:logs run function mechanization:machines/machines/tree_feller/tree_feller_break_wood
scoreboard players add #radius mechanization.data 1

scoreboard players remove #radius mechanization.data 1
execute if score #radius mechanization.data matches 1.. positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:logs run function mechanization:machines/machines/tree_feller/tree_feller_break_wood
scoreboard players add #radius mechanization.data 1

scoreboard players remove #radius mechanization.data 1
execute if score #radius mechanization.data matches 1.. positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:logs run function mechanization:machines/machines/tree_feller/tree_feller_break_wood
scoreboard players add #radius mechanization.data 1

scoreboard players remove #radius mechanization.data 1
execute if score #radius mechanization.data matches 1.. positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:logs run function mechanization:machines/machines/tree_feller/tree_feller_break_wood
scoreboard players add #radius mechanization.data 1

execute if score #radius mechanization.data matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:logs run function mechanization:machines/machines/tree_feller/tree_feller_break_wood
