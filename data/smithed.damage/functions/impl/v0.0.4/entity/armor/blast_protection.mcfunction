# rx97
#  adapted from TCC

##################################
# Formula
#  2 #reduction = max(80,   #reduction   )%
#  1 #reduction = max(80,  ( 8 × level ) )%
##################################

execute store result score #helm smithed.damage run data get storage smithed.damage:main temp.Inventory[{Slot: 103b}].tag.Enchantments[{id: "minecraft:blast_protection"}].lvl
execute store result score #chest smithed.damage run data get storage smithed.damage:main temp.Inventory[{Slot: 102b}].tag.Enchantments[{id: "minecraft:blast_protection"}].lvl
execute store result score #legs smithed.damage run data get storage smithed.damage:main temp.Inventory[{Slot: 101b}].tag.Enchantments[{id: "minecraft:blast_protection"}].lvl
execute store result score #boots smithed.damage run data get storage smithed.damage:main temp.Inventory[{Slot: 100b}].tag.Enchantments[{id: "minecraft:blast_protection"}].lvl

# 0 (add up level)
scoreboard players operation #reduction smithed.damage = #helm smithed.damage
scoreboard players operation #reduction smithed.damage += #chest smithed.damage
scoreboard players operation #reduction smithed.damage += #legs smithed.damage
scoreboard players operation #reduction smithed.damage += #boots smithed.damage

# 1
scoreboard players operation #reduction smithed.damage *= 8 smithed.const

# 2
scoreboard players operation #reduction smithed.damage < 80 smithed.const


# Let's calculate the damage to remove
scoreboard players operation #protection smithed.damage = @s smithed.damage
scoreboard players operation #protection smithed.damage *= #reduction smithed.damage
scoreboard players operation #protection smithed.damage /= 100 smithed.const

scoreboard players operation @s smithed.damage -= #protection smithed.damage
