# @public

# @doc entity/apply/armor
# @input Amount of damage, score, @s, smithed.damage
# This function applies the specified amount of damage in half-hearts to the executing entity, 
# respecting armor, the protection enchantment, and the resistance effect
# ```mcfunction
# scoreboard players set @s smithed.damage 3          # Does 1.5 damage (3 half-hearts) to a player without any armor or resistance
# function #smithed.damage:entity/apply/armor         # Apply the damage
# ```
# To apply damage that bypasses armor or respects other enchantments, use their specific commands:  
# * [`function #smithed.damage:entity/apply`](../apply.md): Ignores armor, enchantments, and resistance  
# * [`function #smithed.damage:entity/apply/projectile`](projectile.md): Respects armor, protection, resistance, and projectile protection  
# * [`function #smithed.damage:entity/apply/explosion`](explosion.md): Respects armor, protection, resistance, and blast protection  

# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor smithed.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness smithed.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage smithed.damage = @s smithed.damage




data modify storage smithed.damage:main temp set from entity @s

# first armor and toughness
function smithed.damage:impl/v0.0.5/entity/armor/toughness


# then protection
function smithed.damage:impl/v0.0.5/entity/armor/protection


# finally resistance
function smithed.damage:impl/v0.0.5/entity/armor/resistance


# go back to same scale
scoreboard players operation @s smithed.damage /= 10 smithed.const

# apply new damage
execute if score @s smithed.damage matches 1.. run function smithed.damage:impl/v0.0.5/entity/apply
