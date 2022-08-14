# rx97
#  adapted from TCC

##################################
# Main Formula
# 10  @s
# 9   @s  = @s / 25
# 8   @s  = #damage *         @s          / 25   
# 7   @s  = #damage * (250 - #armor_calc) / 25
# 6   @s  = #damage * (250 - (min(200,        #armor_calc           )) / 25
# 1   @s  = #damage * (250 - (min(200, max( #armor_calc   , #10ATF ))) / 25
#
#  damage = #damage * (250 - (min(200, max( 10armor ÷ 5   , #10ATF ))) / 25
##################################

##################################
# ATF Formula
# 5   #10ATF
# 4   #10ATF = (10armor - #damage_toughness
# 3   #10ATF = (10armor - (400 * #damage_toughness          )
# 2   #10ATF = (10armor - (400 * damage / (#toughness_calc ))
# 
#     #10ATF = (10armor - (400 * damage / (80 + 10toughness))
##################################

# 1
scoreboard players operation #armor_calc smithed.damage = #10armor smithed.damage
scoreboard players operation #armor_calc smithed.damage /= 5 smithed.const

# tellraw @s ["1 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "smithed.damage"}, "color": "light_purple"}]

# 2 (ATF)
scoreboard players operation #toughness_calc smithed.damage = #10toughness smithed.damage
scoreboard players add #toughness_calc smithed.damage 80

# tellraw @s ["2 #toughness_calc: ", {"score": {"name": "#toughness_calc", "objective": "smithed.damage"}, "color": "yellow"}]

# 3
scoreboard players operation #damage_toughness smithed.damage = #damage smithed.damage
scoreboard players operation #damage_toughness smithed.damage *= 100 smithed.const
scoreboard players operation #damage_toughness smithed.damage /= #toughness_calc smithed.damage

# tellraw @s ["3 #damage_toughness: ", {"score": {"name": "#damage_toughness", "objective": "smithed.damage"}, "color": "light_purple"}]

# 4
scoreboard players operation #damage_toughness smithed.damage *= 4 smithed.const

# tellraw @s ["4 #damage_toughness: ", {"score": {"name": "#damage_toughness", "objective": "smithed.damage"}, "color": "yellow"}]

# 5
scoreboard players operation #10ATF smithed.damage = #10armor smithed.damage
scoreboard players operation #10ATF smithed.damage -= #damage_toughness smithed.damage

# tellraw @s ["5 #10ATF: ", {"score": {"name": "#10ATF", "objective": "smithed.damage"}, "color": "light_purple"}]

# 6
scoreboard players operation #armor_calc smithed.damage > #10ATF smithed.damage

# tellraw @s ["6 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "smithed.damage"}, "color": "yellow"}]

# 7
scoreboard players operation #armor_calc smithed.damage < 200 smithed.const

# tellraw @s ["7 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "smithed.damage"}, "color": "light_purple"}]

# 8
scoreboard players set @s smithed.damage 250
scoreboard players operation @s smithed.damage -= #armor_calc smithed.damage

# tellraw @s ["8 @s: ", {"score": {"name": "@s", "objective": "smithed.damage"}, "color": "yellow"}]

# 9
scoreboard players operation @s smithed.damage *= #damage smithed.damage

# tellraw @s ["9 @s: ", {"score": {"name": "@s", "objective": "smithed.damage"}, "color": "light_purple"}]

# 10
scoreboard players operation @s smithed.damage /= 25 smithed.const

# tellraw @s ["10 @s: ", {"score": {"name": "@s", "objective": "smithed.damage"}, "color": "yellow"}]
