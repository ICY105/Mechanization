# rx97
#  adapted from TCC

##################################
# Formula
#  1 #reduction = #amplifier * 20%
##################################

scoreboard players set #reduction smithed.damage 0

# First, lets grab the values
execute if data storage smithed.damage:main temp.ActiveEffects[{Id: 11}] store result score #reduction smithed.damage run data get storage smithed.damage:main temp.ActiveEffects[{Id: 11}].Amplifier
execute if data storage smithed.damage:main temp.ActiveEffects[{Id: 11}] if score #reduction smithed.damage matches ..-1 run scoreboard players set #reduction smithed.damage 4
execute if data storage smithed.damage:main temp.ActiveEffects[{Id: 11}] run scoreboard players add #reduction smithed.damage 1

# 1
scoreboard players operation #reduction smithed.damage *= 20 smithed.const

# tellraw @s ["#resist %: ", {"score": {"name": "#reduction", "objective": "smithed.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #resistance smithed.damage = @s smithed.damage
scoreboard players operation #resistance smithed.damage *= #reduction smithed.damage
scoreboard players operation #resistance smithed.damage /= 100 smithed.const

# tellraw @s ["#resistance: ", {"score": {"name": "#resistance", "objective": "smithed.damage"}, "color": "blue"}]

scoreboard players operation @s smithed.damage -= #resistance smithed.damage
