
#active animation
execute if entity @s[tag=mech_active] unless block ~-1 ~ ~ #minecraft:logs run tag @e[type=armor_stand,tag=mech_tree_feller_model,limit=1,sort=nearest] remove mech_active
execute if entity @s[tag=mech_active] unless block ~-1 ~ ~ #minecraft:logs run tag @s remove mech_active
execute if entity @s[tag=!mech_active,scores={mech_power=160..}] if block ~-1 ~ ~ #minecraft:logs run tag @e[type=armor_stand,tag=mech_tree_feller_model,limit=1,sort=nearest] add mech_active
execute if entity @s[tag=!mech_active,scores={mech_power=160..}] if block ~-1 ~ ~ #minecraft:logs run tag @s add mech_active

#check for block
scoreboard players set temp_0 mechanization.data 0
execute unless block ~-1 ~ ~ #minecraft:logs run scoreboard players set temp_0 mechanization.data -1

#summon result item
execute if entity @s[tag=!mech_upgrade_nether] if score temp_0 mechanization.data matches 0 run loot spawn ~1 ~ ~ mine ~-1 ~ ~
execute if entity @s[tag=mech_upgrade_nether] if score temp_0 mechanization.data matches 0 run summon item ~1 ~ ~ {Item:{id:"minecraft:charcoal",Count:1b}}

#break wood
execute if score temp_0 mechanization.data matches 0 if entity @s[scores={mech_power=160..},tag=!mech_upgrade_ender] store result score temp_0 mechanization.data run fill ~-1 ~ ~ ~-1 ~12 ~ air replace #minecraft:logs
execute if score temp_0 mechanization.data matches 0 if entity @s[scores={mech_power=160..},tag=mech_upgrade_ender] store result score temp_0 mechanization.data run fill ~1 ~ ~-2 ~-3 ~24 ~2 air replace #minecraft:logs

#change stack size
execute if score temp_0 mechanization.data matches 1.. positioned ~1 ~ ~ store result entity @e[type=item,limit=1,sort=nearest,distance=..0.75] Item.Count int 1 run scoreboard players get temp_0 mech_data

#power & effects
execute if score temp_0 mechanization.data matches 1.. run scoreboard players remove @s mechanization.stored_energy 160
execute if score temp_0 mechanization.data matches 1.. if entity @s[tag=!mech_muffler] run playsound mechanization:machines.tree_feller block @a[distance=..16] ~ ~ ~

#replant
execute if entity @s[tag=mech_upgraded,tag=!mech_active] positioned ~-1 ~ ~ run function mechanization:machines/machines/tree_feller/replant
