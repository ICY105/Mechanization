
# active animation
execute if entity @s[tag=mechanization.active] unless block ~1 ~ ~ #minecraft:logs run tag @e[type=armor_stand,tag=mechanization.tree_feller.model,limit=1,sort=nearest] remove mechanization.active
execute if entity @s[tag=mechanization.active] unless block ~1 ~ ~ #minecraft:logs run tag @s remove mechanization.active
execute if entity @s[tag=!mechanization.active] if block ~1 ~ ~ #minecraft:logs run tag @e[type=armor_stand,tag=mechanization.tree_feller.model,limit=1,sort=nearest] add mechanization.active
execute if entity @s[tag=!mechanization.active] if block ~1 ~ ~ #minecraft:logs run tag @s add mechanization.active

# check for block
scoreboard players set #result mechanization.data 0
execute unless block ~1 ~ ~ #minecraft:logs run scoreboard players set #result mechanization.data -1

# summon result item
execute if entity @s[tag=!mechanization.upgraded.nether] if score #result mechanization.data matches 0 run loot spawn ~-1 ~ ~ mine ~1 ~ ~
execute if entity @s[tag=mechanization.upgraded.nether] if score #result mechanization.data matches 0 run summon item ~-1 ~ ~ {Item:{id:"minecraft:charcoal",Count:1b}}

# break wood
execute if score #result mechanization.data matches 0 if entity @s[tag=!mechanization.upgraded.ender] store result score #result mechanization.data run fill ~1 ~ ~ ~1 ~12 ~ #mechanization:air replace #minecraft:logs
execute if score #result mechanization.data matches 0 if score @s energy.storage matches 160.. if entity @s[tag=mechanization.upgraded.ender] store result score #result mechanization.data run fill ~-1 ~ ~-2 ~3 ~24 ~2 #mechanization:air replace #minecraft:logs

# change stack size
execute if score #result mechanization.data matches 1.. positioned ~-1 ~ ~ store result entity @e[type=item,limit=1,sort=nearest,distance=..0.75] Item.Count int 1 run scoreboard players get #result mechanization.data

# power & effects
execute if score #result mechanization.data matches 1.. run scoreboard players remove @s energy.storage 160
execute if score #result mechanization.data matches 1.. if entity @s[tag=!mechanization.muffled] run playsound mechanization:machines.tree_feller block @a[distance=..16] ~ ~ ~

# replant
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.active] positioned ~1 ~ ~ as @e[type=item,sort=nearest,limit=1,distance=..12] run function mechanization:machines/machines/tree_feller/replant
