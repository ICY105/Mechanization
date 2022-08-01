# rx97
#  adapted from TCC

##################################
# Formula
#  2 #reduction = max(80,   #reduction   )%
#  1 #reduction = max(80,  ( 4 × level ) )%
##################################

execute store result score #helm smithed.damage run data get storage smithed.damage:main temp.Inventory[{Slot: 103b}].tag.Enchantments[{id: "minecraft:protection"}].lvl
execute store result score #chest smithed.damage run data get storage smithed.damage:main temp.Inventory[{Slot: 102b}].tag.Enchantments[{id: "minecraft:protection"}].lvl
execute store result score #legs smithed.damage run data get storage smithed.damage:main temp.Inventory[{Slot: 101b}].tag.Enchantments[{id: "minecraft:protection"}].lvl
execute store result score #boots smithed.damage run data get storage smithed.damage:main temp.Inventory[{Slot: 100b}].tag.Enchantments[{id: "minecraft:protection"}].lvl

# 0 (add up level)
scoreboard players operation #reduction smithed.damage = #helm smithed.damage
scoreboard players operation #reduction smithed.damage += #chest smithed.damage
scoreboard players operation #reduction smithed.damage += #legs smithed.damage
scoreboard players operation #reduction smithed.damage += #boots smithed.damage

# tellraw @s ["#level: ", {"score": {"name": "#reduction", "objective": "smithed.damage"}, "color": "blue"}]

# 1
scoreboard players operation #reduction smithed.damage *= 4 smithed.const

# 2
scoreboard players operation #reduction smithed.damage < 80 smithed.const

# tellraw @s ["#reduction %: ", {"score": {"name": "#reduction", "objective": "smithed.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #protection smithed.damage = @s smithed.damage
scoreboard players operation #protection smithed.damage *= #reduction smithed.damage
scoreboard players operation #protection smithed.damage /= 100 smithed.const


# tellraw @s ["#protection: ", {"score": {"name": "#protection", "objective": "smithed.damage"}, "color": "blue"}]

scoreboard players operation @s smithed.damage -= #protection smithed.damage
