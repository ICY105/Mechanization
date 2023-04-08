# resets player's actionbar scores so they can see any new actionbar
# @s = player that has a freeze score of 1
# located at @s
# run from technical/tick

scoreboard players reset @s smithed.actionbar.freeze
scoreboard players set @s smithed.actionbar.priority 0
