
# check block
execute unless block ^ ^ ^ #minecraft:logs run scoreboard players set #active mechanization.data 0

# active animation
execute if score #active mechanization.data matches 0 if entity @s[tag=mechanization.active] run tag @e[type=armor_stand,tag=mechanization.tree_feller.model,limit=1,sort=nearest] remove mechanization.active
execute if score #active mechanization.data matches 0 if entity @s[tag=mechanization.active] run tag @s remove mechanization.active

execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.active] run tag @e[type=armor_stand,tag=mechanization.tree_feller.model,limit=1,sort=nearest] add mechanization.active
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.active] run tag @s add mechanization.active

# break wood
scoreboard players set #loop mechanization.data 64
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players set #loop mechanization.data 256

scoreboard players set #radius mechanization.data 6
execute if score #active mechanization.data matches 1 run function mechanization:machines/machines/tree_feller/tree_feller_break_wood 

# power & effects
execute if score #active mechanization.data matches 1 run scoreboard players remove @s energy.storage 160
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.muffled] run playsound mechanization:machines.tree_feller block @a[distance=..16] ~ ~ ~

# replant
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.active] positioned ~1 ~ ~ as @e[type=item,sort=nearest,limit=1,distance=..12] run function mechanization:machines/machines/tree_feller/replant
